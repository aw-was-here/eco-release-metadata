### `hadoop_error`

* Synopsis

```bash
hadoop_error string
```

* Description

Print a message to stderr

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | No |

### `hadoop_debug`

* Synopsis

```bash
hadoop_debug string
```

* Description

Print a message to stderr if --debug is turuned on

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | No |

### `hadoop_deprecate_envvar`

* Synopsis

```bash
hadoop_deprecate_envvar oldvar newvar
```

* Description

Replace `oldvar` with `newvar` if `oldvar` exists.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_bootstrap`

* Synopsis

```bash
hadoop_bootstrap 
```

* Description

Bootstraps the Hadoop shell environment

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | No |

### `hadoop_find_confdir`

* Synopsis

```bash
hadoop_find_confdir 
```

* Description

Locate Hadoop's configuration directory

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | No |

### `hadoop_verify_confdir`

* Synopsis

```bash
hadoop_verify_confdir 
```

* Description

Validate ${HADOOP_CONF_DIR}

* Returns

will exit on failure conditions

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_exec_hadoopenv`

* Synopsis

```bash
hadoop_exec_hadoopenv 
```

* Description

Import the hadoop-env.sh settings

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | No |

### `hadoop_exec_userfuncs`

* Synopsis

```bash
hadoop_exec_userfuncs 
```

* Description

Import the replaced functions

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | No |

### `hadoop_exec_hadooprc`

* Synopsis

```bash
hadoop_exec_hadooprc 
```

* Description

Read the user's settings.  This provides for users to override and/or append hadoop-env.sh. It is not meant as a complete system override.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_import_shellprofiles`

* Synopsis

```bash
hadoop_import_shellprofiles 
```

* Description

Import shellprofile.d content

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_shellprofiles_init`

* Synopsis

```bash
hadoop_shellprofiles_init 
```

* Description

Initialize the registered shell profiles

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_shellprofiles_classpath`

* Synopsis

```bash
hadoop_shellprofiles_classpath 
```

* Description

Apply the shell profile classpath additions

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_shellprofiles_nativelib`

* Synopsis

```bash
hadoop_shellprofiles_nativelib 
```

* Description

Apply the shell profile native library additions

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_shellprofiles_finalize`

* Synopsis

```bash
hadoop_shellprofiles_finalize 
```

* Description

Apply the shell profile final configuration

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_basic_init`

* Synopsis

```bash
hadoop_basic_init 
```

* Description

Initialize the Hadoop shell environment, now that user settings have been imported

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | No |

### `hadoop_populate_slaves_file`

* Synopsis

```bash
hadoop_populate_slaves_file filename
```

* Description

Set the slave support information to the contents of `filename`

* Returns

will exit if file does not exist

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | No |

### `hadoop_rotate_log`

* Synopsis

```bash
hadoop_rotate_log filename [number]
```

* Description

Rotates the given `file` until `number` of files exist.

* Returns

$? will contain last mv's return value

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | No |

### `hadoop_actual_ssh`

* Synopsis

```bash
hadoop_actual_ssh hostname command [...]
```

* Description

Via ssh, log into `hostname` and run `command`

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_connect_to_hosts`

* Synopsis

```bash
hadoop_connect_to_hosts command [...]
```

* Description

Connect to ${HADOOP_SLAVES} or ${HADOOP_SLAVE_NAMES} and execute command.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_common_slave_mode_execute`

* Synopsis

```bash
hadoop_common_slave_mode_execute commandarray
```

* Description

Utility routine to handle --slaves mode

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_validate_classname`

* Synopsis

```bash
hadoop_validate_classname classname
```

* Description

Verify that a shell command was passed a valid class name

* Returns

0 = success

1 = failure w/user message

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_add_param`

* Synopsis

```bash
hadoop_add_param envvar checkstring appendstring
```

* Description

Append the `appendstring` if `checkstring` is not present in the given `envvar`

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_add_profile`

* Synopsis

```bash
hadoop_add_profile shellprofile
```

* Description

Register the given `shellprofile` to the Hadoop shell subsystem

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_add_classpath`

* Synopsis

```bash
hadoop_add_classpath object [before|after]
```

* Description

Add a file system object (directory, file, wildcard, ...) to the classpath. Optionally provide a hint as to where in the classpath it should go.

* Returns

0 = success (added or duplicate)

1 = failure (doesn't exist or some other reason)

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_add_colonpath`

* Synopsis

```bash
hadoop_add_colonpath object [before|after]
```

* Description

Add a file system object (directory, file, wildcard, ...) to the colonpath.  Optionally provide a hint as to where in the colonpath it should go.

* Returns

0 = success (added or duplicate)

1 = failure (doesn't exist or some other reason)

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_add_javalibpath`

* Synopsis

```bash
hadoop_add_javalibpath object [before|after]
```

* Description

Add a file system object (directory, file, wildcard, ...) to the Java JNI path.  Optionally provide a hint as to where in the Java JNI path it should go.

* Returns

0 = success (added or duplicate)

1 = failure (doesn't exist or some other reason)

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_add_ldlibpath`

* Synopsis

```bash
hadoop_add_ldlibpath object [before|after]
```

* Description

Add a file system object (directory, file, wildcard, ...) to the LD_LIBRARY_PATH.  Optionally provide a hint as to where in the LD_LIBRARY_PATH it should go.

* Returns

0 = success (added or duplicate)

1 = failure (doesn't exist or some other reason)

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_add_common_to_classpath`

* Synopsis

```bash
hadoop_add_common_to_classpath 
```

* Description

Add the common/core Hadoop components to the environment

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_add_to_classpath_userpath`

* Synopsis

```bash
hadoop_add_to_classpath_userpath 
```

* Description

Add the user's custom classpath settings to the environment

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_os_tricks`

* Synopsis

```bash
hadoop_os_tricks 
```

* Description

Routine to configure any OS-specific settings.

* Returns

may exit on failure conditions

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_java_setup`

* Synopsis

```bash
hadoop_java_setup 
```

* Description

Configure/verify ${JAVA_HOME}

* Returns

may exit on failure conditions

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_finalize_libpaths`

* Synopsis

```bash
hadoop_finalize_libpaths 
```

* Description

Finish Java JNI paths prior to execution

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_finalize_hadoop_heap`

* Synopsis

```bash
hadoop_finalize_hadoop_heap 
```

* Description

Finish Java heap parameters prior to execution

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_translate_cygwin_path`

* Synopsis

```bash
hadoop_translate_cygwin_path varnameref [true]
```

* Description

Converts the contents of the variable name `varnameref` into the equivalent Windows path. If the second parameter is true, then `varnameref` is treated as though it was a path list.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_finalize_hadoop_opts`

* Synopsis

```bash
hadoop_finalize_hadoop_opts 
```

* Description

Finish configuring Hadoop specific system properties prior to executing Java

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_finalize_classpath`

* Synopsis

```bash
hadoop_finalize_classpath 
```

* Description

Finish Java classpath prior to execution

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_finalize_catalina_opts`

* Synopsis

```bash
hadoop_finalize_catalina_opts 
```

* Description

Finish Catalina configuration prior to execution

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_finalize`

* Synopsis

```bash
hadoop_finalize 
```

* Description

Finish all the remaining environment settings prior to executing Java.  This is a wrapper that calls the other `finalize` routines.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_exit_with_usage`

* Synopsis

```bash
hadoop_exit_with_usage exitcode
```

* Description

Print usage information and exit with the passed `exitcode`

* Returns

This function will always exit.

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | No |

### `hadoop_verify_secure_prereq`

* Synopsis

```bash
hadoop_verify_secure_prereq 
```

* Description

Verify that prerequisites have been met prior to excuting a privileged program.

* Returns

This routine may exit.

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_setup_secure_service`

* Synopsis

```bash
hadoop_setup_secure_service 
```

* Description

None

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_verify_piddir`

* Synopsis

```bash
hadoop_verify_piddir 
```

* Description

None

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_verify_logdir`

* Synopsis

```bash
hadoop_verify_logdir 
```

* Description

None

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_status_daemon`

* Synopsis

```bash
hadoop_status_daemon pidfile
```

* Description

Determine the status of the daemon referenced by `pidfile`

* Returns

(mostly) LSB 4.1.0 compatible status

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_java_exec`

* Synopsis

```bash
hadoop_java_exec command class [options]
```

* Description

Execute the Java `class`, passing along any `options`. Additionally, set the Java property -Dproc_`command`.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_start_daemon`

* Synopsis

```bash
hadoop_start_daemon command class pidfile [options]
```

* Description

Start a non-privileged daemon in the foreground.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_start_daemon_wrapper`

* Synopsis

```bash
hadoop_start_daemon_wrapper command class pidfile outfile [options]
```

* Description

Start a non-privileged daemon in the background.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_start_secure_daemon`

* Synopsis

```bash
hadoop_start_secure_daemon command class daemonpidfile daemonoutfile daemonerrfile wrapperpidfile [options]
```

* Description

Start a privileged daemon in the foreground.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_start_secure_daemon_wrapper`

* Synopsis

```bash
hadoop_start_secure_daemon_wrapper command class daemonpidfile daemonoutfile wrapperpidfile warpperoutfile daemonerrfile [options]
```

* Description

Start a privileged daemon in the background.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_stop_daemon`

* Synopsis

```bash
hadoop_stop_daemon command pidfile
```

* Description

Stop the non-privileged `command` daemon with that that is running at `pidfile`.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_stop_secure_daemon`

* Synopsis

```bash
hadoop_stop_secure_daemon command daemonpidfile wrapperpidfile
```

* Description

Stop the privileged `command` daemon with that that is running at `daemonpidfile` and launched with the wrapper at `wrapperpidfile`.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_daemon_handler`

* Synopsis

```bash
hadoop_daemon_handler [start|stop|status|default] command class daemonpidfile daemonoutfile [options]
```

* Description

Manage a non-privileged daemon.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_secure_daemon_handler`

* Synopsis

```bash
hadoop_secure_daemon_handler [start|stop|status|default] command class daemonpidfile daemonoutfile wrapperpidfile wrapperoutfile wrappererrfile [options]
```

* Description

Manage a privileged daemon.

* Returns

Nothing

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

### `hadoop_verify_user`

* Synopsis

```bash
hadoop_verify_user subcommand
```

* Description

Verify that ${USER} is allowed to execute the given subcommand.

* Returns

will exit on failure conditions

| Classification | Level |
| :--- | :--- |
| Audience | Public |
| Stability | Stable |
| Replaceable | Yes |

### `hadoop_do_classpath_subcommand`

* Synopsis

```bash
hadoop_do_classpath_subcommand [parameters]
```

* Description

Perform the classpath subcommand with the given parameters

* Returns

will print & exit with no params

| Classification | Level |
| :--- | :--- |
| Audience | Private |
| Stability | Evolving |
| Replaceable | Yes |

