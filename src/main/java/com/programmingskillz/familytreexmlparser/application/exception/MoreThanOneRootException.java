package com.programmingskillz.familytreexmlparser.application.exception;

public class MoreThanOneRootException extends RuntimeException {

  public MoreThanOneRootException() {
    super("Only one root entry is allowed");
  }
}