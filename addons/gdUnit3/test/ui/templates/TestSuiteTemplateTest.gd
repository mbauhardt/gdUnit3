# GdUnit generated TestSuite
#warning-ignore-all:unused_argument
#warning-ignore-all:return_value_discarded
class_name TestSuiteTemplateTest
extends GdUnitTestSuite

# TestSuite generated from
const __source = 'res://addons/gdUnit3/src/ui/templates/TestSuiteTemplate.gd'

func test_show() -> void:
	var template = spy("res://addons/gdUnit3/src/ui/templates/TestSuiteTemplate.tscn")
	scene_runner(template)
	
	verify(template).setup_editor_colors()
	verify(template).setup_supported_types()
	verify(template).load_template(GdUnitTestSuiteTemplate.TEMPLATE_ID_GD)
	verify(template).setup_tags_help()

func test_load_template_gd() -> void:
	var runner := scene_runner("res://addons/gdUnit3/src/ui/templates/TestSuiteTemplate.tscn")
	runner.invoke("load_template", GdUnitTestSuiteTemplate.TEMPLATE_ID_GD)
	
	assert_int(runner.get_property("_selected_template")).is_equal(GdUnitTestSuiteTemplate.TEMPLATE_ID_GD)
	assert_str(runner.get_property("_template_editor").text).is_equal(GdUnitTestSuiteDefaultTemplate.DEFAULT_TEMP_TS_GD.replace("\r\n", "\n"))

func test_load_template_cs() -> void:
	var runner := scene_runner("res://addons/gdUnit3/src/ui/templates/TestSuiteTemplate.tscn")
	runner.invoke("load_template", GdUnitTestSuiteTemplate.TEMPLATE_ID_CS)
	
	assert_int(runner.get_property("_selected_template")).is_equal(GdUnitTestSuiteTemplate.TEMPLATE_ID_CS)
	assert_str(runner.get_property("_template_editor").text).is_equal(GdUnitTestSuiteDefaultTemplate.DEFAULT_TEMP_TS_CS.replace("\r\n", "\n"))
