cp test.xml test_bkup.xml

../src/edit_xml_file "<debug>" "I am debuging" "test.xml"

cp test.xml test_bkup.xml

../src/edit_xml_file "<debug>" "I am not debuging" "test.xml"

cmp --silent test.xml test_bkup.xml

if [ $? -eq 0 ]; then
    echo "[ ERROR ] edit_xml_file test failed"
    exit 1
else    
    echo "[ SUCCESS] edit_xml_file test successful"
fi

cp test.xml test_bkup.xml

../src/edit_xml_file "<debug>" "I am debuging" "test.xml"

cmp --silent test.xml test_bkup.xml

if [ $? -eq 0 ]; then
    echo "[ ERROR ] edit_xml_file test failed"
    exit 1
else    
    echo "[ SUCCESS] edit_xml_file test successful"
fi

