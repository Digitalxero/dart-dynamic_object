import 'package:unittest/unittest.dart';
import 'package:dynamic_object/dynamic_object.dart';

void main() {
	test('Simple set test', () {
		DynamicObject t = new DynamicObject();
		t.test = 'passed';
		expect(t.test, equals('passed'));
	});

	test('Set method test', () {
		DynamicObject t = new DynamicObject();
		t.test2 = (){
			return 'passed';
		};
		expect(t.test2(), equals('passed'));
	});

	test('Set method with args test', () {
		DynamicObject t = new DynamicObject();
		t.test3 = (String val){
			return val;
		};
		expect(t.test3('passed'), equals('passed'));
	});

	test('Set method with args and kwargs test', () {
		DynamicObject t = new DynamicObject();
		t.test3 = (String val, {test: 'failed'}){
			return test;
		};
		expect(t.test3('passed', test: 'passed'), equals('passed'));
	});
}