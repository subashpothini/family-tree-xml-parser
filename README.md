## Family-Tree XML Parser

:fire: Spring Boot application which will accept XML documents in a family tree format, parse them and store them in the database. :fire:

The XML documents are in the following format:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<entries>
    <entry>Adam</entry>
    <entry parentName="Adam">Durim</entry>
    <entry parentName="Durim">Nayla</entry>
    <entry parentName="Adam">Jason</entry>
    <entry parentName="Jason">Leta</entry>
    <entry parentName="Jason">Benjamin</entry>
    <entry parentName="Benjamin">Isaac</entry>
    <entry parentName="Isaac">Robert</entry>
</entries>
```
Upon parsing the document, the application forms a tree data structure and writes that tree in a database table called ENTRY.

:warning: An entry can have a single parent, but multiple children. If an entry does not have a parent, then it is considered to be the root of the tree.

The structure of the ENTRY table is shown below:

|Column Name|Column Type |Column Description         |
|:----------|:-----------|:--------------------------|
|ID         |Integer     |Primary key (autogenerated)|
|NAME       |String      |Name of entry              |
|PARENT_ID  |Integer     |Reference to parent entry  |

XML documents can be sent to the application in two ways:

:point_right: Via HTTP POST requests: `http://localhost:8080/documents` with _Content-Type: application/xml_

:point_right: By placing the files to a predefined directory (the application checks this directory in a
regular interval, e.g. every 30 seconds).

## Installation
:one: `git clone https://github.com/durimkryeziu/family-tree-xml-parser.git`

:two: In the **params.properties** file:
- set **params.input-directory** to the directory you want to scan for XML files of the previously mentioned format 
- set **params.processing-interval** to the interval you what to scan for.

:three: Run `mvn clean install` or `mvn -Dmaven.test.skip=true clean install` to skip tests

:four: Run `java -jar target/family-tree-xml-parser-1.0.0-SNAPSHOT.jar` and you are ready to go!

## References
- Spring Framework Reference Doc: http://docs.spring.io/spring/docs/current/spring-framework-reference/htmlsingle/
- Spring Boot Reference Doc: http://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/

## License
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org>
