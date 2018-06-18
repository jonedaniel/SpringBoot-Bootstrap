package com.huamu668.demo.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;

import java.beans.PropertyDescriptor;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;

@Slf4j
public class BeanMapUtils {

    public static Object getMap2Bean(Map map, Class<?> beanClass) {
        if (map == null) {
            return null;
        }
        Object inst = null;
        try {
            Field[]        fields       = beanClass.getDeclaredFields();
            Constructor<?> constructor1 = beanClass.getConstructor(new Class[0]);
            inst = constructor1.newInstance(new Object[0]);
            for (Field field : fields) {
                if (!field.getName().equals("serialVersionUID")) {
                    try {
                        PropertyDescriptor pd     = new PropertyDescriptor(field.getName(), inst.getClass());
                        Method             method = pd.getWriteMethod();
                        if (null != map.get(field.getName())) {
                            if ("Long".equals(field.getType().getSimpleName())) {
                                method.invoke(inst,
                                        new Object[]{StringUtils.isEmpty(map.get(field.getName()).toString()) ? ""
                                                : Long.valueOf(Long.parseLong(map.get(field.getName()).toString()))});
                            } else if ("Date".equals(field.getType().getSimpleName())) {
                                String dateStr = "";
                                if (!StringUtils.isEmpty(map.get(field.getName()).toString())) {
                                    dateStr = map.get(field.getName()).toString();
                                    if (dateStr.indexOf("T") != -1) {
                                        dateStr = dateStr.replace("T", " ");
                                    }
                                }
                                if (StringUtils.trimAllWhitespace(field.getType().getName()).indexOf("java.util.Date") >= 0) {
                                    method.invoke(inst,
                                            new Object[]{StringUtils.isEmpty(map.get(field.getName()).toString()) ? ""
                                                    : DateUtils.reverse2Date(dateStr)});
                                } else {
                                    method.invoke(inst,
                                            new Object[]{StringUtils.isEmpty(map.get(field.getName()).toString()) ? ""
                                                    : DateUtils.reverse2SqlDate(dateStr)});
                                }
                            } else if (("Byte".equals(field.getType().getSimpleName()))
                                    || ("byte".equals(field.getType().getSimpleName()))) {
                                method.invoke(inst,
                                        new Object[]{StringUtils.isEmpty(map.get(field.getName()).toString()) ? ""
                                                : Byte.valueOf(
                                                Byte.parseByte(map.get(field.getName()).toString()))});
                            } else if (("Integer".equals(field.getType().getSimpleName()))
                                    || ("int".equals(field.getType().getSimpleName()))) {
                                method.invoke(inst,
                                        new Object[]{StringUtils.isEmpty(map.get(field.getName()).toString()) ? ""
                                                : Integer.valueOf(
                                                Integer.parseInt(map.get(field.getName()).toString()))});
                            } else if ("List".equals(field.getType().getSimpleName())) {
                                method.invoke(inst, new Object[]{
                                        null == map.get(field.getName()) ? "" : (List) map.get(field.getName())});
                            } else if ("Map".equals(field.getType().getSimpleName())) {
                                method.invoke(inst, new Object[]{
                                        null == map.get(field.getName()) ? "" : (Map) map.get(field.getName())});
                            } else if (("Double".equals(field.getType().getSimpleName()))
                                    || ("double".equals(field.getType().getSimpleName()))) {
                                method.invoke(inst, new Object[]{
                                        Double.valueOf(Double.parseDouble(map.get(field.getName()).toString()))});
                            } else if (("Float".equals(field.getType().getSimpleName()))
                                    || ("float".equals(field.getType().getSimpleName()))) {
                                method.invoke(inst, new Object[]{
                                        Float.valueOf(Float.parseFloat(map.get(field.getName()).toString()))});
                            } else {
                                method.invoke(inst,
                                        new Object[]{StringUtils.isEmpty(map.get(field.getName()).toString()) ? ""
                                                : map.get(field.getName()).toString()});
                            }
                        }
                    } catch (Exception e) {
                        log.error(e.getMessage());
                    }
                }
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return inst;
    }

    public static Map getBean2Map(Object beanObj) {
        Map map = new HashMap();
        if (null == beanObj) {
            return map;
        }
        try {
            Class<?> classType = beanObj.getClass();
            Field[]  fields    = classType.getDeclaredFields();
            for (Field field : fields) {
                if (!field.getName().equals("serialVersionUID")) {
                    try {
                        PropertyDescriptor pd     = new PropertyDescriptor(field.getName(), beanObj.getClass());
                        Method             method = pd.getReadMethod();
                        Object             value  = method.invoke(beanObj, new Object[0]);
                        if (null != value) {
                            map.put(field.getName(), value);
                        } else if (("Long".equals(field.getType().getSimpleName()))
                                || ("Integer".equals(field.getType().getSimpleName()))) {
                            map.put(field.getName(), Integer.valueOf(-1));
                        } else {
                            map.put(field.getName(), "");
                        }
                    } catch (Exception e) {
                        log.error(e.getMessage());
                    }
                }
            }
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return map;
    }

    public static List<Object> getListMapTobean(List<Map<Object, Object>> list, Class<?> beanClass) {
        if (list == null || list.size() == 0) {
            return null;
        }
        List<Object> result = new ArrayList<>();
        for (Map m : list) {
            Object o = getMap2Bean(m, beanClass);
            result.add(o);
        }
        return result;
    }

    public static List<Map> getListBeanToMap(List<Object> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        List<Map> result = new ArrayList<>();
        for (Object o : list) {
            Map m = getBean2Map(o);
            result.add(m);
        }
        return result;
    }


    public static Map<String, String> objectToString(Map<Object, Object> loginMap) {
        Map<String, String> strMap = new HashMap<>();
        for (Map.Entry<Object, Object> entry : loginMap.entrySet()) {
            if (java.sql.Timestamp.class.isInstance(entry.getValue())) {
                String datetimetoStr = DateUtils.DatetimetoStr((Date) entry.getValue());
                loginMap.put(entry.getKey(), datetimetoStr);
            } else if (Number.class.isInstance(entry.getValue())) {
                loginMap.put(entry.getKey(), String.valueOf(entry.getValue()));
            }
            strMap.put((String) entry.getKey(), (String) entry.getValue());
        }
        return strMap;
    }
}
