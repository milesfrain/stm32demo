COMPONENT_NAME=sum

SRC_FILES = \
  $(PROJECT_SRC_DIR)/foo.cpp \

TEST_SRC_FILES = \
  $(UNITTEST_SRC_DIR)/test_foo.cpp

include $(CPPUTEST_MAKFILE_INFRA)
