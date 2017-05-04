
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache Spark  2.0.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [SPARK-18125](https://issues.apache.org/jira/browse/SPARK-18125) | *Critical* | **Spark generated code causes CompileException when groupByKey, reduceGroups and map(\_.\_2) are used**

Code logic looks like this:
{noformat}
            .groupByKey
            .reduceGroups
            .map(\_.\_2)
{noformat}
Works fine with 2.0.0.

2.0.1 error Message: 
{noformat}
Caused by: java.util.concurrent.ExecutionException: java.lang.Exception: failed to compile: org.codehaus.commons.compiler.CompileException: File 'generated.java', Line 206, Column 123: Unknown variable or type "value4"
/\* 001 \*/ public java.lang.Object generate(Object[] references) {
/\* 002 \*/   return new SpecificMutableProjection(references);
/\* 003 \*/ }
/\* 004 \*/
/\* 005 \*/ class SpecificMutableProjection extends org.apache.spark.sql.catalyst.expressions.codegen.BaseMutableProjection {
/\* 006 \*/
/\* 007 \*/   private Object[] references;
/\* 008 \*/   private MutableRow mutableRow;
/\* 009 \*/   private Object[] values;
/\* 010 \*/   private java.lang.String errMsg;
/\* 011 \*/   private java.lang.String errMsg1;
/\* 012 \*/   private boolean MapObjects\_loopIsNull1;
/\* 013 \*/   private io.mistnet.analytics.lib.ConnLog MapObjects\_loopValue0;
/\* 014 \*/   private java.lang.String errMsg2;
/\* 015 \*/   private Object[] values1;
/\* 016 \*/   private boolean MapObjects\_loopIsNull3;
/\* 017 \*/   private java.lang.String MapObjects\_loopValue2;
/\* 018 \*/   private boolean isNull\_0;
/\* 019 \*/   private boolean value\_0;
/\* 020 \*/   private boolean isNull\_1;
/\* 021 \*/   private InternalRow value\_1;
/\* 022 \*/
/\* 023 \*/   private void apply\_4(InternalRow i) {
/\* 024 \*/
/\* 025 \*/     boolean isNull52 = MapObjects\_loopIsNull1;
/\* 026 \*/     final double value52 = isNull52 ? -1.0 : MapObjects\_loopValue0.ts();
/\* 027 \*/     if (isNull52) {
/\* 028 \*/       values1[8] = null;
/\* 029 \*/     } else {
/\* 030 \*/       values1[8] = value52;
/\* 031 \*/     }
/\* 032 \*/     boolean isNull54 = MapObjects\_loopIsNull1;
/\* 033 \*/     final java.lang.String value54 = isNull54 ? null : (java.lang.String) MapObjects\_loopValue0.uid();
/\* 034 \*/     isNull54 = value54 == null;
/\* 035 \*/     boolean isNull53 = isNull54;
/\* 036 \*/     final UTF8String value53 = isNull53 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value54);
/\* 037 \*/     isNull53 = value53 == null;
/\* 038 \*/     if (isNull53) {
/\* 039 \*/       values1[9] = null;
/\* 040 \*/     } else {
/\* 041 \*/       values1[9] = value53;
/\* 042 \*/     }
/\* 043 \*/     boolean isNull56 = MapObjects\_loopIsNull1;
/\* 044 \*/     final java.lang.String value56 = isNull56 ? null : (java.lang.String) MapObjects\_loopValue0.src();
/\* 045 \*/     isNull56 = value56 == null;
/\* 046 \*/     boolean isNull55 = isNull56;
/\* 047 \*/     final UTF8String value55 = isNull55 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value56);
/\* 048 \*/     isNull55 = value55 == null;
/\* 049 \*/     if (isNull55) {
/\* 050 \*/       values1[10] = null;
/\* 051 \*/     } else {
/\* 052 \*/       values1[10] = value55;
/\* 053 \*/     }
/\* 054 \*/   }
/\* 055 \*/
/\* 056 \*/
/\* 057 \*/   private void apply\_7(InternalRow i) {
/\* 058 \*/
/\* 059 \*/     boolean isNull69 = MapObjects\_loopIsNull1;
/\* 060 \*/     final scala.Option value69 = isNull69 ? null : (scala.Option) MapObjects\_loopValue0.orig\_bytes();
/\* 061 \*/     isNull69 = value69 == null;
/\* 062 \*/
/\* 063 \*/     final boolean isNull68 = isNull69 \|\| value69.isEmpty();
/\* 064 \*/     long value68 = isNull68 ?
/\* 065 \*/     -1L : (Long) value69.get();
/\* 066 \*/     if (isNull68) {
/\* 067 \*/       values1[17] = null;
/\* 068 \*/     } else {
/\* 069 \*/       values1[17] = value68;
/\* 070 \*/     }
/\* 071 \*/     boolean isNull71 = MapObjects\_loopIsNull1;
/\* 072 \*/     final scala.Option value71 = isNull71 ? null : (scala.Option) MapObjects\_loopValue0.resp\_bytes();
/\* 073 \*/     isNull71 = value71 == null;
/\* 074 \*/
/\* 075 \*/     final boolean isNull70 = isNull71 \|\| value71.isEmpty();
/\* 076 \*/     long value70 = isNull70 ?
/\* 077 \*/     -1L : (Long) value71.get();
/\* 078 \*/     if (isNull70) {
/\* 079 \*/       values1[18] = null;
/\* 080 \*/     } else {
/\* 081 \*/       values1[18] = value70;
/\* 082 \*/     }
/\* 083 \*/     boolean isNull74 = MapObjects\_loopIsNull1;
/\* 084 \*/     final scala.Option value74 = isNull74 ? null : (scala.Option) MapObjects\_loopValue0.conn\_state();
/\* 085 \*/     isNull74 = value74 == null;
/\* 086 \*/
/\* 087 \*/     final boolean isNull73 = isNull74 \|\| value74.isEmpty();
/\* 088 \*/     java.lang.String value73 = isNull73 ?
/\* 089 \*/     null : (java.lang.String) value74.get();
/\* 090 \*/     boolean isNull72 = isNull73;
/\* 091 \*/     final UTF8String value72 = isNull72 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value73);
/\* 092 \*/     isNull72 = value72 == null;
/\* 093 \*/     if (isNull72) {
/\* 094 \*/       values1[19] = null;
/\* 095 \*/     } else {
/\* 096 \*/       values1[19] = value72;
/\* 097 \*/     }
/\* 098 \*/   }
/\* 099 \*/
/\* 100 \*/
/\* 101 \*/   private void apply\_1(InternalRow i) {
/\* 102 \*/
/\* 103 \*/     boolean isNull37 = MapObjects\_loopIsNull1;
/\* 104 \*/     final scala.Option value37 = isNull37 ? null : (scala.Option) MapObjects\_loopValue0.sensor\_name();
/\* 105 \*/     isNull37 = value37 == null;
/\* 106 \*/
/\* 107 \*/     final boolean isNull36 = isNull37 \|\| value37.isEmpty();
/\* 108 \*/     java.lang.String value36 = isNull36 ?
/\* 109 \*/     null : (java.lang.String) value37.get();
/\* 110 \*/     boolean isNull35 = isNull36;
/\* 111 \*/     final UTF8String value35 = isNull35 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value36);
/\* 112 \*/     isNull35 = value35 == null;
/\* 113 \*/     if (isNull35) {
/\* 114 \*/       values1[2] = null;
/\* 115 \*/     } else {
/\* 116 \*/       values1[2] = value35;
/\* 117 \*/     }
/\* 118 \*/     boolean isNull40 = MapObjects\_loopIsNull1;
/\* 119 \*/     final scala.Option value40 = isNull40 ? null : (scala.Option) MapObjects\_loopValue0.ioa\_uuid();
/\* 120 \*/     isNull40 = value40 == null;
/\* 121 \*/
/\* 122 \*/     final boolean isNull39 = isNull40 \|\| value40.isEmpty();
/\* 123 \*/     java.lang.String value39 = isNull39 ?
/\* 124 \*/     null : (java.lang.String) value40.get();
/\* 125 \*/     boolean isNull38 = isNull39;
/\* 126 \*/     final UTF8String value38 = isNull38 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value39);
/\* 127 \*/     isNull38 = value38 == null;
/\* 128 \*/     if (isNull38) {
/\* 129 \*/       values1[3] = null;
/\* 130 \*/     } else {
/\* 131 \*/       values1[3] = value38;
/\* 132 \*/     }
/\* 133 \*/   }
/\* 134 \*/
/\* 135 \*/
/\* 136 \*/   private void apply\_12(InternalRow i) {
/\* 137 \*/
/\* 138 \*/     boolean isNull98 = MapObjects\_loopIsNull1;
/\* 139 \*/     final scala.Option value98 = isNull98 ? null : (scala.Option) MapObjects\_loopValue0.cc();
/\* 140 \*/     isNull98 = value98 == null;
/\* 141 \*/
/\* 142 \*/     final boolean isNull97 = isNull98 \|\| value98.isEmpty();
/\* 143 \*/     java.lang.String value97 = isNull97 ?
/\* 144 \*/     null : (java.lang.String) value98.get();
/\* 145 \*/     boolean isNull96 = isNull97;
/\* 146 \*/     final UTF8String value96 = isNull96 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value97);
/\* 147 \*/     isNull96 = value96 == null;
/\* 148 \*/     if (isNull96) {
/\* 149 \*/       values1[29] = null;
/\* 150 \*/     } else {
/\* 151 \*/       values1[29] = value96;
/\* 152 \*/     }
/\* 153 \*/     boolean isNull101 = MapObjects\_loopIsNull1;
/\* 154 \*/     final scala.Option value101 = isNull101 ? null : (scala.Option) MapObjects\_loopValue0.location();
/\* 155 \*/     isNull101 = value101 == null;
/\* 156 \*/
/\* 157 \*/     final boolean isNull100 = isNull101 \|\| value101.isEmpty();
/\* 158 \*/     java.lang.String value100 = isNull100 ?
/\* 159 \*/     null : (java.lang.String) value101.get();
/\* 160 \*/     boolean isNull99 = isNull100;
/\* 161 \*/     final UTF8String value99 = isNull99 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value100);
/\* 162 \*/     isNull99 = value99 == null;
/\* 163 \*/     if (isNull99) {
/\* 164 \*/       values1[30] = null;
/\* 165 \*/     } else {
/\* 166 \*/       values1[30] = value99;
/\* 167 \*/     }
/\* 168 \*/   }
/\* 169 \*/
/\* 170 \*/
/\* 171 \*/   private void apply\_9(InternalRow i) {
/\* 172 \*/
/\* 173 \*/     boolean isNull83 = MapObjects\_loopIsNull1;
/\* 174 \*/     final scala.Option value83 = isNull83 ? null : (scala.Option) MapObjects\_loopValue0.history();
/\* 175 \*/     isNull83 = value83 == null;
/\* 176 \*/
/\* 177 \*/     final boolean isNull82 = isNull83 \|\| value83.isEmpty();
/\* 178 \*/     java.lang.String value82 = isNull82 ?
/\* 179 \*/     null : (java.lang.String) value83.get();
/\* 180 \*/     boolean isNull81 = isNull82;
/\* 181 \*/     final UTF8String value81 = isNull81 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value82);
/\* 182 \*/     isNull81 = value81 == null;
/\* 183 \*/     if (isNull81) {
/\* 184 \*/       values1[23] = null;
/\* 185 \*/     } else {
/\* 186 \*/       values1[23] = value81;
/\* 187 \*/     }
/\* 188 \*/     boolean isNull85 = MapObjects\_loopIsNull1;
/\* 189 \*/     final scala.Option value85 = isNull85 ? null : (scala.Option) MapObjects\_loopValue0.orig\_pkts();
/\* 190 \*/     isNull85 = value85 == null;
/\* 191 \*/
/\* 192 \*/     final boolean isNull84 = isNull85 \|\| value85.isEmpty();
/\* 193 \*/     long value84 = isNull84 ?
/\* 194 \*/     -1L : (Long) value85.get();
/\* 195 \*/     if (isNull84) {
/\* 196 \*/       values1[24] = null;
/\* 197 \*/     } else {
/\* 198 \*/       values1[24] = value84;
/\* 199 \*/     }
/\* 200 \*/   }
/\* 201 \*/
/\* 202 \*/
/\* 203 \*/   private void apply1\_1(InternalRow i) {
/\* 204 \*/
/\* 205 \*/     boolean isNull25 = false;
/\* 206 \*/     final io.mistnet.analytics.scan.SrcDstGrouped value25 = isNull25 ? null : (io.mistnet.analytics.scan.SrcDstGrouped) value4.\_2();
/\* 207 \*/     isNull25 = value25 == null;
/\* 208 \*/
/\* 209 \*/     if (isNull25) {
/\* 210 \*/       throw new RuntimeException(errMsg2);
/\* 211 \*/     }
/\* 212 \*/
/\* 213 \*/     boolean isNull23 = false;
/\* 214 \*/     final scala.collection.Seq value23 = isNull23 ? null : (scala.collection.Seq) value25.cs();
/\* 215 \*/     isNull23 = value23 == null;
/\* 216 \*/     ArrayData value22 = null;
/\* 217 \*/
/\* 218 \*/     if (!isNull23) {
/\* 219 \*/
/\* 220 \*/       InternalRow[] convertedArray1 = null;
/\* 221 \*/       int dataLength1 = value23.size();
/\* 222 \*/       convertedArray1 = new InternalRow[dataLength1];
/\* 223 \*/
/\* 224 \*/       int loopIndex1 = 0;
/\* 225 \*/       while (loopIndex1 \< dataLength1) {
/\* 226 \*/         MapObjects\_loopValue0 = (io.mistnet.analytics.lib.ConnLog) (value23.apply(loopIndex1));
/\* 227 \*/         MapObjects\_loopIsNull1 = MapObjects\_loopValue0 == null;
/\* 228 \*/
/\* 229 \*/
/\* 230 \*/         boolean isNull26 = false;
/\* 231 \*/         InternalRow value26 = null;
/\* 232 \*/         if (!false && MapObjects\_loopIsNull1) {
/\* 233 \*/
/\* 234 \*/           final InternalRow value28 = null;
/\* 235 \*/           isNull26 = true;
/\* 236 \*/           value26 = value28;
/\* 237 \*/         } else {
/\* 238 \*/
/\* 239 \*/           boolean isNull29 = false;
/\* 240 \*/           values1 = new Object[31];apply\_0(i);
/\* 241 \*/           apply\_1(i);
/\* 242 \*/           apply\_2(i);
/\* 243 \*/           apply\_3(i);
/\* 244 \*/           apply\_4(i);
/\* 245 \*/           apply\_5(i);
/\* 246 \*/           apply\_6(i);
/\* 247 \*/           apply\_7(i);
/\* 248 \*/           apply\_8(i);
/\* 249 \*/           apply\_9(i);
/\* 250 \*/           apply\_10(i);
/\* 251 \*/           apply\_11(i);
/\* 252 \*/           apply\_12(i);
/\* 253 \*/           final InternalRow value29 = new org.apache.spark.sql.catalyst.expressions.GenericInternalRow(values1);
/\* 254 \*/           this.values1 = null;
/\* 255 \*/           isNull26 = isNull29;
/\* 256 \*/           value26 = value29;
/\* 257 \*/         }
/\* 258 \*/         if (isNull26) {
/\* 259 \*/           convertedArray1[loopIndex1] = null;
/\* 260 \*/         } else {
/\* 261 \*/           convertedArray1[loopIndex1] = value26 instanceof UnsafeRow? value26.copy() : value26;
/\* 262 \*/         }
/\* 263 \*/
/\* 264 \*/         loopIndex1 += 1;
/\* 265 \*/       }
/\* 266 \*/
/\* 267 \*/       value22 = new org.apache.spark.sql.catalyst.util.GenericArrayData(convertedArray1);
/\* 268 \*/     }
/\* 269 \*/     if (isNull23) {
/\* 270 \*/       values[2] = null;
/\* 271 \*/     } else {
/\* 272 \*/       values[2] = value22;
/\* 273 \*/     }
/\* 274 \*/   }
/\* 275 \*/
/\* 276 \*/
/\* 277 \*/   private void apply\_3(InternalRow i) {
/\* 278 \*/
/\* 279 \*/     boolean isNull49 = MapObjects\_loopIsNull1;
/\* 280 \*/     final scala.Option value49 = isNull49 ? null : (scala.Option) MapObjects\_loopValue0.date();
/\* 281 \*/     isNull49 = value49 == null;
/\* 282 \*/
/\* 283 \*/     final boolean isNull48 = isNull49 \|\| value49.isEmpty();
/\* 284 \*/     java.lang.String value48 = isNull48 ?
/\* 285 \*/     null : (java.lang.String) value49.get();
/\* 286 \*/     boolean isNull47 = isNull48;
/\* 287 \*/     final UTF8String value47 = isNull47 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value48);
/\* 288 \*/     isNull47 = value47 == null;
/\* 289 \*/     if (isNull47) {
/\* 290 \*/       values1[6] = null;
/\* 291 \*/     } else {
/\* 292 \*/       values1[6] = value47;
/\* 293 \*/     }
/\* 294 \*/     boolean isNull51 = MapObjects\_loopIsNull1;
/\* 295 \*/     final scala.Option value51 = isNull51 ? null : (scala.Option) MapObjects\_loopValue0.hour();
/\* 296 \*/     isNull51 = value51 == null;
/\* 297 \*/
/\* 298 \*/     final boolean isNull50 = isNull51 \|\| value51.isEmpty();
/\* 299 \*/     int value50 = isNull50 ?
/\* 300 \*/     -1 : (Integer) value51.get();
/\* 301 \*/     if (isNull50) {
/\* 302 \*/       values1[7] = null;
/\* 303 \*/     } else {
/\* 304 \*/       values1[7] = value50;
/\* 305 \*/     }
/\* 306 \*/   }
/\* 307 \*/
/\* 308 \*/
/\* 309 \*/   private void apply\_6(InternalRow i) {
/\* 310 \*/
/\* 311 \*/     boolean isNull65 = MapObjects\_loopIsNull1;
/\* 312 \*/     final scala.Option value65 = isNull65 ? null : (scala.Option) MapObjects\_loopValue0.service();
/\* 313 \*/     isNull65 = value65 == null;
/\* 314 \*/
/\* 315 \*/     final boolean isNull64 = isNull65 \|\| value65.isEmpty();
/\* 316 \*/     java.lang.String value64 = isNull64 ?
/\* 317 \*/     null : (java.lang.String) value65.get();
/\* 318 \*/     boolean isNull63 = isNull64;
/\* 319 \*/     final UTF8String value63 = isNull63 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value64);
/\* 320 \*/     isNull63 = value63 == null;
/\* 321 \*/     if (isNull63) {
/\* 322 \*/       values1[15] = null;
/\* 323 \*/     } else {
/\* 324 \*/       values1[15] = value63;
/\* 325 \*/     }
/\* 326 \*/     boolean isNull67 = MapObjects\_loopIsNull1;
/\* 327 \*/     final scala.Option value67 = isNull67 ? null : (scala.Option) MapObjects\_loopValue0.duration();
/\* 328 \*/     isNull67 = value67 == null;
/\* 329 \*/
/\* 330 \*/     final boolean isNull66 = isNull67 \|\| value67.isEmpty();
/\* 331 \*/     double value66 = isNull66 ?
/\* 332 \*/     -1.0 : (Double) value67.get();
/\* 333 \*/     if (isNull66) {
/\* 334 \*/       values1[16] = null;
/\* 335 \*/     } else {
/\* 336 \*/       values1[16] = value66;
/\* 337 \*/     }
/\* 338 \*/   }
/\* 339 \*/
/\* 340 \*/
/\* 341 \*/   private void apply\_0(InternalRow i) {
/\* 342 \*/
/\* 343 \*/     boolean isNull32 = MapObjects\_loopIsNull1;
/\* 344 \*/     final scala.Option value32 = isNull32 ? null : (scala.Option) MapObjects\_loopValue0.log\_type();
/\* 345 \*/     isNull32 = value32 == null;
/\* 346 \*/
/\* 347 \*/     final boolean isNull31 = isNull32 \|\| value32.isEmpty();
/\* 348 \*/     java.lang.String value31 = isNull31 ?
/\* 349 \*/     null : (java.lang.String) value32.get();
/\* 350 \*/     boolean isNull30 = isNull31;
/\* 351 \*/     final UTF8String value30 = isNull30 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value31);
/\* 352 \*/     isNull30 = value30 == null;
/\* 353 \*/     if (isNull30) {
/\* 354 \*/       values1[0] = null;
/\* 355 \*/     } else {
/\* 356 \*/       values1[0] = value30;
/\* 357 \*/     }
/\* 358 \*/     boolean isNull34 = MapObjects\_loopIsNull1;
/\* 359 \*/     final scala.Option value34 = isNull34 ? null : (scala.Option) MapObjects\_loopValue0.timestamp();
/\* 360 \*/     isNull34 = value34 == null;
/\* 361 \*/
/\* 362 \*/     final boolean isNull33 = isNull34 \|\| value34.isEmpty();
/\* 363 \*/     long value33 = isNull33 ?
/\* 364 \*/     -1L : (Long) value34.get();
/\* 365 \*/     if (isNull33) {
/\* 366 \*/       values1[1] = null;
/\* 367 \*/     } else {
/\* 368 \*/       values1[1] = value33;
/\* 369 \*/     }
/\* 370 \*/   }
/\* 371 \*/
/\* 372 \*/
/\* 373 \*/   private void apply\_11(InternalRow i) {
/\* 374 \*/
/\* 375 \*/     boolean isNull94 = MapObjects\_loopIsNull1;
/\* 376 \*/     final scala.Option value94 = isNull94 ? null : (scala.Option) MapObjects\_loopValue0.tunnel\_parents();
/\* 377 \*/     isNull94 = value94 == null;
/\* 378 \*/
/\* 379 \*/     final boolean isNull93 = isNull94 \|\| value94.isEmpty();
/\* 380 \*/     scala.collection.Seq value93 = isNull93 ?
/\* 381 \*/     null : (scala.collection.Seq) value94.get();
/\* 382 \*/     ArrayData value92 = null;
/\* 383 \*/
/\* 384 \*/     if (!isNull93) {
/\* 385 \*/
/\* 386 \*/       UTF8String[] convertedArray = null;
/\* 387 \*/       int dataLength = value93.size();
/\* 388 \*/       convertedArray = new UTF8String[dataLength];
/\* 389 \*/
/\* 390 \*/       int loopIndex = 0;
/\* 391 \*/       while (loopIndex \< dataLength) {
/\* 392 \*/         MapObjects\_loopValue2 = (java.lang.String) (value93.apply(loopIndex));
/\* 393 \*/         MapObjects\_loopIsNull3 = MapObjects\_loopValue2 == null;
/\* 394 \*/
/\* 395 \*/
/\* 396 \*/         boolean isNull95 = MapObjects\_loopIsNull3;
/\* 397 \*/         final UTF8String value95 = isNull95 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(MapObjects\_loopValue2);
/\* 398 \*/         isNull95 = value95 == null;
/\* 399 \*/         if (isNull95) {
/\* 400 \*/           convertedArray[loopIndex] = null;
/\* 401 \*/         } else {
/\* 402 \*/           convertedArray[loopIndex] = value95;
/\* 403 \*/         }
/\* 404 \*/
/\* 405 \*/         loopIndex += 1;
/\* 406 \*/       }
/\* 407 \*/
/\* 408 \*/       value92 = new org.apache.spark.sql.catalyst.util.GenericArrayData(convertedArray);
/\* 409 \*/     }
/\* 410 \*/     if (isNull93) {
/\* 411 \*/       values1[28] = null;
/\* 412 \*/     } else {
/\* 413 \*/       values1[28] = value92;
/\* 414 \*/     }
/\* 415 \*/   }
/\* 416 \*/
/\* 417 \*/
/\* 418 \*/   private void apply\_8(InternalRow i) {
/\* 419 \*/
/\* 420 \*/     boolean isNull76 = MapObjects\_loopIsNull1;
/\* 421 \*/     final scala.Option value76 = isNull76 ? null : (scala.Option) MapObjects\_loopValue0.local\_orig();
/\* 422 \*/     isNull76 = value76 == null;
/\* 423 \*/
/\* 424 \*/     final boolean isNull75 = isNull76 \|\| value76.isEmpty();
/\* 425 \*/     boolean value75 = isNull75 ?
/\* 426 \*/     false : (Boolean) value76.get();
/\* 427 \*/     if (isNull75) {
/\* 428 \*/       values1[20] = null;
/\* 429 \*/     } else {
/\* 430 \*/       values1[20] = value75;
/\* 431 \*/     }
/\* 432 \*/     boolean isNull78 = MapObjects\_loopIsNull1;
/\* 433 \*/     final scala.Option value78 = isNull78 ? null : (scala.Option) MapObjects\_loopValue0.local\_resp();
/\* 434 \*/     isNull78 = value78 == null;
/\* 435 \*/
/\* 436 \*/     final boolean isNull77 = isNull78 \|\| value78.isEmpty();
/\* 437 \*/     boolean value77 = isNull77 ?
/\* 438 \*/     false : (Boolean) value78.get();
/\* 439 \*/     if (isNull77) {
/\* 440 \*/       values1[21] = null;
/\* 441 \*/     } else {
/\* 442 \*/       values1[21] = value77;
/\* 443 \*/     }
/\* 444 \*/     boolean isNull80 = MapObjects\_loopIsNull1;
/\* 445 \*/     final scala.Option value80 = isNull80 ? null : (scala.Option) MapObjects\_loopValue0.missed\_bytes();
/\* 446 \*/     isNull80 = value80 == null;
/\* 447 \*/
/\* 448 \*/     final boolean isNull79 = isNull80 \|\| value80.isEmpty();
/\* 449 \*/     long value79 = isNull79 ?
/\* 450 \*/     -1L : (Long) value80.get();
/\* 451 \*/     if (isNull79) {
/\* 452 \*/       values1[22] = null;
/\* 453 \*/     } else {
/\* 454 \*/       values1[22] = value79;
/\* 455 \*/     }
/\* 456 \*/   }
/\* 457 \*/
/\* 458 \*/
/\* 459 \*/   private void apply1\_0(InternalRow i) {
/\* 460 \*/
/\* 461 \*/     boolean isNull17 = false;
/\* 462 \*/     final io.mistnet.analytics.scan.SrcDstGrouped value17 = isNull17 ? null : (io.mistnet.analytics.scan.SrcDstGrouped) value4.\_2();
/\* 463 \*/     isNull17 = value17 == null;
/\* 464 \*/
/\* 465 \*/     if (isNull17) {
/\* 466 \*/       throw new RuntimeException(errMsg);
/\* 467 \*/     }
/\* 468 \*/
/\* 469 \*/     boolean isNull15 = false;
/\* 470 \*/     final java.lang.String value15 = isNull15 ? null : (java.lang.String) value17.src();
/\* 471 \*/     isNull15 = value15 == null;
/\* 472 \*/     boolean isNull14 = isNull15;
/\* 473 \*/     final UTF8String value14 = isNull14 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value15);
/\* 474 \*/     isNull14 = value14 == null;
/\* 475 \*/     if (isNull14) {
/\* 476 \*/       values[0] = null;
/\* 477 \*/     } else {
/\* 478 \*/       values[0] = value14;
/\* 479 \*/     }
/\* 480 \*/     boolean isNull21 = false;
/\* 481 \*/     final io.mistnet.analytics.scan.SrcDstGrouped value21 = isNull21 ? null : (io.mistnet.analytics.scan.SrcDstGrouped) value4.\_2();
/\* 482 \*/     isNull21 = value21 == null;
/\* 483 \*/
/\* 484 \*/     if (isNull21) {
/\* 485 \*/       throw new RuntimeException(errMsg1);
/\* 486 \*/     }
/\* 487 \*/
/\* 488 \*/     boolean isNull19 = false;
/\* 489 \*/     final java.lang.String value19 = isNull19 ? null : (java.lang.String) value21.dest();
/\* 490 \*/     isNull19 = value19 == null;
/\* 491 \*/     boolean isNull18 = isNull19;
/\* 492 \*/     final UTF8String value18 = isNull18 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value19);
/\* 493 \*/     isNull18 = value18 == null;
/\* 494 \*/     if (isNull18) {
/\* 495 \*/       values[1] = null;
/\* 496 \*/     } else {
/\* 497 \*/       values[1] = value18;
/\* 498 \*/     }
/\* 499 \*/   }
/\* 500 \*/
/\* 501 \*/
/\* 502 \*/   private void apply\_2(InternalRow i) {
/\* 503 \*/
/\* 504 \*/     boolean isNull43 = MapObjects\_loopIsNull1;
/\* 505 \*/     final scala.Option value43 = isNull43 ? null : (scala.Option) MapObjects\_loopValue0.user\_uuid();
/\* 506 \*/     isNull43 = value43 == null;
/\* 507 \*/
/\* 508 \*/     final boolean isNull42 = isNull43 \|\| value43.isEmpty();
/\* 509 \*/     java.lang.String value42 = isNull42 ?
/\* 510 \*/     null : (java.lang.String) value43.get();
/\* 511 \*/     boolean isNull41 = isNull42;
/\* 512 \*/     final UTF8String value41 = isNull41 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value42);
/\* 513 \*/     isNull41 = value41 == null;
/\* 514 \*/     if (isNull41) {
/\* 515 \*/       values1[4] = null;
/\* 516 \*/     } else {
/\* 517 \*/       values1[4] = value41;
/\* 518 \*/     }
/\* 519 \*/     boolean isNull46 = MapObjects\_loopIsNull1;
/\* 520 \*/     final scala.Option value46 = isNull46 ? null : (scala.Option) MapObjects\_loopValue0.host\_uuid();
/\* 521 \*/     isNull46 = value46 == null;
/\* 522 \*/
/\* 523 \*/     final boolean isNull45 = isNull46 \|\| value46.isEmpty();
/\* 524 \*/     java.lang.String value45 = isNull45 ?
/\* 525 \*/     null : (java.lang.String) value46.get();
/\* 526 \*/     boolean isNull44 = isNull45;
/\* 527 \*/     final UTF8String value44 = isNull44 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value45);
/\* 528 \*/     isNull44 = value44 == null;
/\* 529 \*/     if (isNull44) {
/\* 530 \*/       values1[5] = null;
/\* 531 \*/     } else {
/\* 532 \*/       values1[5] = value44;
/\* 533 \*/     }
/\* 534 \*/   }
/\* 535 \*/
/\* 536 \*/
/\* 537 \*/   private void apply\_5(InternalRow i) {
/\* 538 \*/
/\* 539 \*/     boolean isNull57 = MapObjects\_loopIsNull1;
/\* 540 \*/     final int value57 = isNull57 ? -1 : MapObjects\_loopValue0.src\_port();
/\* 541 \*/     if (isNull57) {
/\* 542 \*/       values1[11] = null;
/\* 543 \*/     } else {
/\* 544 \*/       values1[11] = value57;
/\* 545 \*/     }
/\* 546 \*/     boolean isNull59 = MapObjects\_loopIsNull1;
/\* 547 \*/     final java.lang.String value59 = isNull59 ? null : (java.lang.String) MapObjects\_loopValue0.dest();
/\* 548 \*/     isNull59 = value59 == null;
/\* 549 \*/     boolean isNull58 = isNull59;
/\* 550 \*/     final UTF8String value58 = isNull58 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value59);
/\* 551 \*/     isNull58 = value58 == null;
/\* 552 \*/     if (isNull58) {
/\* 553 \*/       values1[12] = null;
/\* 554 \*/     } else {
/\* 555 \*/       values1[12] = value58;
/\* 556 \*/     }
/\* 557 \*/     boolean isNull60 = MapObjects\_loopIsNull1;
/\* 558 \*/     final int value60 = isNull60 ? -1 : MapObjects\_loopValue0.dest\_port();
/\* 559 \*/     if (isNull60) {
/\* 560 \*/       values1[13] = null;
/\* 561 \*/     } else {
/\* 562 \*/       values1[13] = value60;
/\* 563 \*/     }
/\* 564 \*/     boolean isNull62 = MapObjects\_loopIsNull1;
/\* 565 \*/     final java.lang.String value62 = isNull62 ? null : (java.lang.String) MapObjects\_loopValue0.proto();
/\* 566 \*/     isNull62 = value62 == null;
/\* 567 \*/     boolean isNull61 = isNull62;
/\* 568 \*/     final UTF8String value61 = isNull61 ? null : org.apache.spark.unsafe.types.UTF8String.fromString(value62);
/\* 569 \*/     isNull61 = value61 == null;
/\* 570 \*/     if (isNull61) {
/\* 571 \*/       values1[14] = null;
/\* 572 \*/     } else {
/\* 573 \*/       values1[14] = value61;
/\* 574 \*/     }
/\* 575 \*/   }
/\* 576 \*/
/\* 577 \*/
/\* 578 \*/   private void apply\_10(InternalRow i) {
/\* 579 \*/
/\* 580 \*/     boolean isNull87 = MapObjects\_loopIsNull1;
/\* 581 \*/     final scala.Option value87 = isNull87 ? null : (scala.Option) MapObjects\_loopValue0.orig\_ip\_bytes();
/\* 582 \*/     isNull87 = value87 == null;
/\* 583 \*/
/\* 584 \*/     final boolean isNull86 = isNull87 \|\| value87.isEmpty();
/\* 585 \*/     long value86 = isNull86 ?
/\* 586 \*/     -1L : (Long) value87.get();
/\* 587 \*/     if (isNull86) {
/\* 588 \*/       values1[25] = null;
/\* 589 \*/     } else {
/\* 590 \*/       values1[25] = value86;
/\* 591 \*/     }
/\* 592 \*/     boolean isNull89 = MapObjects\_loopIsNull1;
/\* 593 \*/     final scala.Option value89 = isNull89 ? null : (scala.Option) MapObjects\_loopValue0.resp\_pkts();
/\* 594 \*/     isNull89 = value89 == null;
/\* 595 \*/
/\* 596 \*/     final boolean isNull88 = isNull89 \|\| value89.isEmpty();
/\* 597 \*/     long value88 = isNull88 ?
/\* 598 \*/     -1L : (Long) value89.get();
/\* 599 \*/     if (isNull88) {
/\* 600 \*/       values1[26] = null;
/\* 601 \*/     } else {
/\* 602 \*/       values1[26] = value88;
/\* 603 \*/     }
/\* 604 \*/     boolean isNull91 = MapObjects\_loopIsNull1;
/\* 605 \*/     final scala.Option value91 = isNull91 ? null : (scala.Option) MapObjects\_loopValue0.resp\_ip\_bytes();
/\* 606 \*/     isNull91 = value91 == null;
/\* 607 \*/
/\* 608 \*/     final boolean isNull90 = isNull91 \|\| value91.isEmpty();
/\* 609 \*/     long value90 = isNull90 ?
/\* 610 \*/     -1L : (Long) value91.get();
/\* 611 \*/     if (isNull90) {
/\* 612 \*/       values1[27] = null;
/\* 613 \*/     } else {
/\* 614 \*/       values1[27] = value90;
/\* 615 \*/     }
/\* 616 \*/   }
/\* 617 \*/
/\* 618 \*/
/\* 619 \*/   public SpecificMutableProjection(Object[] references) {
/\* 620 \*/     this.references = references;
/\* 621 \*/     mutableRow = new org.apache.spark.sql.catalyst.expressions.GenericMutableRow(2);
/\* 622 \*/     this.values = null;
/\* 623 \*/     this.errMsg = (java.lang.String) references[3];
/\* 624 \*/     this.errMsg1 = (java.lang.String) references[4];
/\* 625 \*/
/\* 626 \*/
/\* 627 \*/     this.errMsg2 = (java.lang.String) references[5];
/\* 628 \*/     this.values1 = null;
/\* 629 \*/
/\* 630 \*/
/\* 631 \*/     this.isNull\_0 = true;
/\* 632 \*/     this.value\_0 = false;
/\* 633 \*/     this.isNull\_1 = true;
/\* 634 \*/     this.value\_1 = null;
/\* 635 \*/   }
/\* 636 \*/
/\* 637 \*/   public org.apache.spark.sql.catalyst.expressions.codegen.BaseMutableProjection target(MutableRow row) {
/\* 638 \*/     mutableRow = row;
/\* 639 \*/     return this;
/\* 640 \*/   }
/\* 641 \*/
/\* 642 \*/   /\* Provide immutable access to the last projected row. \*/
/\* 643 \*/   public InternalRow currentValue() {
/\* 644 \*/     return (InternalRow) mutableRow;
/\* 645 \*/   }
/\* 646 \*/
/\* 647 \*/   public java.lang.Object apply(java.lang.Object \_i) {
/\* 648 \*/     InternalRow i = (InternalRow) \_i;
/\* 649 \*/
/\* 650 \*/
/\* 651 \*/
/\* 652 \*/     Object obj = ((Expression) references[0]).eval(null);
/\* 653 \*/     scala.Tuple2 value1 = (scala.Tuple2) obj;
/\* 654 \*/
/\* 655 \*/     boolean isNull2 = false;
/\* 656 \*/     final boolean value2 = isNull2 ? false : (Boolean) value1.\_1();
/\* 657 \*/     this.isNull\_0 = isNull2;
/\* 658 \*/     this.value\_0 = value2;
/\* 659 \*/
/\* 660 \*/
/\* 661 \*/     Object obj1 = ((Expression) references[1]).eval(null);
/\* 662 \*/     scala.Tuple2 value4 = (scala.Tuple2) obj1;
/\* 663 \*/
/\* 664 \*/     boolean isNull8 = false;
/\* 665 \*/     final io.mistnet.analytics.scan.SrcDstGrouped value8 = isNull8 ? null : (io.mistnet.analytics.scan.SrcDstGrouped) value4.\_2();
/\* 666 \*/     isNull8 = value8 == null;
/\* 667 \*/     boolean isNull6 = false;
/\* 668 \*/     boolean value6 = true;
/\* 669 \*/
/\* 670 \*/     if (!false && isNull8) {
/\* 671 \*/     } else {
/\* 672 \*/
/\* 673 \*/       Object obj2 = ((Expression) references[2]).eval(null);
/\* 674 \*/       scala.None$ value10 = (scala.None$) obj2;
/\* 675 \*/
/\* 676 \*/       boolean isNull11 = false;
/\* 677 \*/       final io.mistnet.analytics.scan.SrcDstGrouped value11 = isNull11 ? null : (io.mistnet.analytics.scan.SrcDstGrouped) value4.\_2();
/\* 678 \*/       isNull11 = value11 == null;
/\* 679 \*/       boolean isNull9 = false \|\| isNull11;
/\* 680 \*/       final boolean value9 = isNull9 ? false : value10.equals(value11);
/\* 681 \*/       if (!isNull9 && value9) {
/\* 682 \*/       } else if (!false && !isNull9) {
/\* 683 \*/         value6 = false;
/\* 684 \*/       } else {
/\* 685 \*/         isNull6 = true;
/\* 686 \*/       }
/\* 687 \*/     }
/\* 688 \*/     boolean isNull5 = false;
/\* 689 \*/     InternalRow value5 = null;
/\* 690 \*/     if (!isNull6 && value6) {
/\* 691 \*/
/\* 692 \*/       final InternalRow value12 = null;
/\* 693 \*/       isNull5 = true;
/\* 694 \*/       value5 = value12;
/\* 695 \*/     } else {
/\* 696 \*/
/\* 697 \*/       boolean isNull13 = false;
/\* 698 \*/       this.values = new Object[3];apply1\_0(i);
/\* 699 \*/       apply1\_1(i);
/\* 700 \*/       final InternalRow value13 = new org.apache.spark.sql.catalyst.expressions.GenericInternalRow(values);
/\* 701 \*/       this.values = null;
/\* 702 \*/       isNull5 = isNull13;
/\* 703 \*/       value5 = value13;
/\* 704 \*/     }
/\* 705 \*/     this.isNull\_1 = isNull5;
/\* 706 \*/     this.value\_1 = value5;
/\* 707 \*/
/\* 708 \*/     // copy all the results into MutableRow
/\* 709 \*/
/\* 710 \*/     if (!this.isNull\_0) {
/\* 711 \*/       mutableRow.setBoolean(0, this.value\_0);
/\* 712 \*/     } else {
/\* 713 \*/       mutableRow.setNullAt(0);
/\* 714 \*/     }
/\* 715 \*/
/\* 716 \*/     if (!this.isNull\_1) {
/\* 717 \*/       mutableRow.update(1, this.value\_1);
/\* 718 \*/     } else {
/\* 719 \*/       mutableRow.setNullAt(1);
/\* 720 \*/     }
/\* 721 \*/
/\* 722 \*/     return mutableRow;
/\* 723 \*/   }
/\* 724 \*/ }

	at org.spark\_project.guava.util.concurrent.AbstractFuture$Sync.getValue(AbstractFuture.java:306)
	at org.spark\_project.guava.util.concurrent.AbstractFuture$Sync.get(AbstractFuture.java:293)
	at org.spark\_project.guava.util.concurrent.AbstractFuture.get(AbstractFuture.java:116)
	at org.spark\_project.guava.util.concurrent.Uninterruptibles.getUninterruptibly(Uninterruptibles.java:135)
	at org.spark\_project.guava.cache.LocalCache$Segment.getAndRecordStats(LocalCache.java:2410)
	at org.spark\_project.guava.cache.LocalCache$Segment.loadSync(LocalCache.java:2380)
	at org.spark\_project.guava.cache.LocalCache$Segment.lockedGetOrLoad(LocalCache.java:2342)
	at org.spark\_project.guava.cache.LocalCache$Segment.get(LocalCache.java:2257)
	at org.spark\_project.guava.cache.LocalCache.get(LocalCache.java:4000)
	at org.spark\_project.guava.cache.LocalCache.getOrLoad(LocalCache.java:4004)
	at org.spark\_project.guava.cache.LocalCache$LocalLoadingCache.get(LocalCache.java:4874)
	at org.apache.spark.sql.catalyst.expressions.codegen.CodeGenerator$.compile(CodeGenerator.scala:841)
	at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.create(GenerateMutableProjection.scala:140)
	at org.apache.spark.sql.catalyst.expressions.codegen.GenerateMutableProjection$.generate(GenerateMutableProjection.scala:44)
	at org.apache.spark.sql.execution.SparkPlan.newMutableProjection(SparkPlan.scala:369)
	at org.apache.spark.sql.execution.aggregate.SortAggregateExec$$anonfun$doExecute$1$$anonfun$3$$anonfun$4.apply(SortAggregateExec.scala:93)
	at org.apache.spark.sql.execution.aggregate.SortAggregateExec$$anonfun$doExecute$1$$anonfun$3$$anonfun$4.apply(SortAggregateExec.scala:92)
	at org.apache.spark.sql.execution.aggregate.AggregationIterator.\<init\>(AggregationIterator.scala:143)
	at org.apache.spark.sql.execution.aggregate.SortBasedAggregationIterator.\<init\>(SortBasedAggregationIterator.scala:39)
	at org.apache.spark.sql.execution.aggregate.SortAggregateExec$$anonfun$doExecute$1$$anonfun$3.apply(SortAggregateExec.scala:84)
	at org.apache.spark.sql.execution.aggregate.SortAggregateExec$$anonfun$doExecute$1$$anonfun$3.apply(SortAggregateExec.scala:75)
	at org.apache.spark.rdd.RDD$$anonfun$mapPartitionsInternal$1$$anonfun$apply$24.apply(RDD.scala:803)
	at org.apache.spark.rdd.RDD$$anonfun$mapPartitionsInternal$1$$anonfun$apply$24.apply(RDD.scala:803)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:319)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:283)
	at org.apache.spark.rdd.MapPartitionsRDD.compute(MapPartitionsRDD.scala:38)
	at org.apache.spark.rdd.RDD.computeOrReadCheckpoint(RDD.scala:319)
	at org.apache.spark.rdd.RDD.iterator(RDD.scala:283)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:79)
	at org.apache.spark.scheduler.ShuffleMapTask.runTask(ShuffleMapTask.scala:47)
	at org.apache.spark.scheduler.Task.run(Task.scala:86)
	at org.apache.spark.executor.Executor$TaskRunner.run(Executor.scala:274)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [SPARK-16845](https://issues.apache.org/jira/browse/SPARK-16845) | *Major* | **org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB**

I have a wide table(400 columns), when I try fitting the traindata on all columns,  the fatal error occurs. 


	... 46 more
Caused by: org.codehaus.janino.JaninoRuntimeException: Code of method "(Lorg/apache/spark/sql/catalyst/InternalRow;Lorg/apache/spark/sql/catalyst/InternalRow;)I" of class "org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB
	at org.codehaus.janino.CodeContext.makeSpace(CodeContext.java:941)
	at org.codehaus.janino.CodeContext.write(CodeContext.java:854)



