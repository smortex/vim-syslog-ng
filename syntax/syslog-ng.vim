" Vim syntax file
" Language:	syslog-ng
" Maintainer:	syslog-ng contributors
" Updaters:	Refer to `git log`
" URL:		https://github.com/syslog-ng/syslog-ng/tree/master/contrib/vim
" Changes:	Refer to `git log`
" Last Change:	2023-05-19

if exists("b:current_syntax")
    finish
endif

" Remove any old syntax stuff hanging around
syn clear
syn case match
set iskeyword=a-z,A-Z,48-57,_,-

syn keyword sysngObject log
syn keyword sysngObject if else elif
" We cannot use keyword here because of higher priority
syn match sysngObject "\(parser\|destination\|source\|filter\|options\|rewrite\)"

syn match sysngParameter "\(parser\|destination\|source\|filter\|options\|rewrite\)\ze[[:blank:]]*("

syn keyword sysngParameter KW_LOWER KW_UPPER LogTemplate accept-redirects accept_redirects ack add-contextual-data add-prefix add_contextual_data add_prefix address aggregate allow-compress allow-pair-separator-in-value allow_compress allow_pair_separator_in_value amqp attributes auth auth-algorithm auth-method auth-password auth-username auth_algorithm auth_method auth_password auth_username azure-auth-header azure_auth_header base-dir base_dir batch-bytes batch-lines batch-timeout batch_bytes batch_lines batch_timeout bcc body body-prefix body-suffix body_prefix body_suffix bootstrap-servers bootstrap_servers bytes ca-dir ca-file ca_dir ca_file cacert cast cc cert cert-file cert_file chain-hostnames chain_hostnames chars check-hostname check_hostname cipher-suite cipher_suite class class-name class-path class_name class_path cleansession client-id client-sigalgs client_id client_sigalgs close-on-input close_on_input collection columns command community compaction condition config content-type content_type create-dirs create-lists create-statement-append create_dirs create_lists create_statement_append crl-dir crl_dir csv-parser csv_parser curve-list curve_list database date-parser date_parser db-parser db_parser dbd-option dbd_option default-facility default-level default-priority default-selector default-severity default_facility default_level default_priority default_selector default_severity delimiter delimiters description destport dhparam-file dhparam_file dialect dir dir-group dir-owner dir-perm dir_group dir_owner dir_perm disk-buf-size disk-buffer disk_buf_size disk_buffer dns-cache dns_cache door drop-invalid drop-unmatched drop_invalid drop_unmatched dynamic-window-realloc-ticks dynamic-window-size dynamic-window-stats-freq dynamic_window_realloc_ticks dynamic_window_size dynamic_window_stats_freq ebpf ecdh-curve-list ecdh_curve_list enc-algorithm enc-password enc_algorithm enc_password encoding engine-id engine_id event-time event_time example-destination example-diskq-source example-msg-generator example-random-generator example_destination example_diskq_source example_msg_generator example_random_generator exchange exchange-declare exchange-type exchange_declare exchange_type exclude exclude-tags exclude_tags extract-prefix extract-stray-words-into extract_prefix extract_stray_words_into failback failover failover-servers failover_servers fallback-topic fallback_topic fetch-no-data-delay fetch_no_data_delay fifo file filename filename-pattern filename_pattern filters fix-time-zone fix_time_zone flags flush-bytes flush-lines flush-timeout flush-timeout-on-reload flush-timeout-on-shutdown flush_bytes flush_lines flush_timeout flush_timeout_on_reload flush_timeout_on_shutdown follow-freq follow_freq force-directory-polling force_directory_polling format frac-digits frac_digits frame-size frame_size freq from fsync geoip2 glob group group-lines group_lines grouping-by grouping_by guess-time-zone guess_time_zone having header headers heartbeat hook-commands hook_commands host host-override host_override http http-proxy http-test-slots http_proxy http_test_slots identity ignore-case ignore-tns-config ignore_case ignore_tns_config imports increment indexes inherit-environment inherit-mode inherit_environment inherit_mode inject-mode inject_mode interface internal ip ip-freebind ip-protocol ip-tos ip-ttl ip_freebind ip_protocol ip_tos ip_ttl java json-parser json_parser jvm-options jvm_options kafka-c kafka_c keep-alive keep-hostname keep-timestamp keep_alive keep_hostname keep_timestamp keepalive key key-delimiter key-file key_delimiter key_file keylog-file keylog_file kv-parser kv_parser labels level line-separator line_separator linux-audit-parser linux_audit_parser listen-backlog listen_backlog loaders local-creds local-time-zone local_creds local_time_zone localip localport log-fetch-limit log-fifo-size log-iw-size log-msg-size log-prefix log_fetch_limit log_fifo_size log_iw_size log_msg_size log_prefix long-hostnames long_hostnames map-value-pairs map_value_pairs mark mark-errors-as-critical mark-freq mark-mode mark_errors_as_critical mark_freq mark_mode marker match-boot match_boot matches max-channel max-connections max-field-size max-files max_channel max_connections max_field_size max_files mem-buf-length mem-buf-size mem_buf_length mem_buf_size message message-template message_template method metric metrics-probe metrics_probe mongodb monitor-method monitor_method mqtt multi-line-garbage multi-line-mode multi-line-prefix multi-line-suffix multi-line-timeout multi_line_garbage multi_line_mode multi_line_prefix multi_line_suffix multi_line_timeout namespace network normalize-hostnames normalize_hostnames null num ocsp-stapling-verify ocsp_stapling_verify on-error on_error openbsd openssl-conf-cmds openssl_conf_cmds option optional overwrite-if-older overwrite_if_older owner pad-size pad_size pair pair-separator pair_separator pass-unix-credentials pass_unix_credentials password patterns peer-verify peer_verify perm persist-name persist_name persistent pipe pkcs12-file pkcs12_file poll-timeout poll_timeout port prealloc prefix program program-override program-template program_override program_template proxy pseudofile python python-fetcher python-http-header python_fetcher python_http_header qos qout-size qout_size quote-pairs quote_pairs quotes rate rate-limit rate_limit read-old-records read_old_records recursive redis regexp-parser regexp_parser rekey reliable remove-if-older remove_if_older replace replace-prefix replace_prefix reply-to reply_to response-action response_action retries retry-sql-inserts retry_sql_inserts reuseport riemann routing-key routing_key scope sdata-parser sdata-prefix sdata_parser sdata_prefix secret selector send-time-zone send_time_zone sender server servers service session-statements session_statements set-message-macro set-time-zone set_message_macro set_time_zone setup shift shift-levels shift_levels shutdown sigalgs smtp sni snmp snmp-obj snmp_obj snmptrapd-parser snmptrapd_parser so-broadcast so-keepalive so-passcred so-rcvbuf so-reuseport so-sndbuf so_broadcast so_keepalive so_passcred so_rcvbuf so_reuseport so_sndbuf sockets sort-key sort_key spoof-source spoof-source-max-msglen spoof_source spoof_source_max_msglen sql ssl-options ssl-version ssl_options ssl_version startup state stats stdin stomp strings strip-whitespaces strip_whitespaces subject successful-probes-required successful_probes_required sun-stream sun-streams sun_stream sun_streams suppress symlink-as symlink_as sync sync-freq sync-send sync_freq sync_send syslog syslog-parser syslog_parser systemd-journal systemd-syslog systemd_journal systemd_syslog table tags tags-parser tags_parser tcp tcp-keep-alive tcp-keepalive tcp-keepalive-intvl tcp-keepalive-probes tcp-keepalive-time tcp-probe-interval tcp6 tcp_keep_alive tcp_keepalive tcp_keepalive_intvl tcp_keepalive_probes tcp_keepalive_time tcp_probe_interval teardown template template-escape template_escape throttle time-reap time-reopen time-stamp time-zone time_reap time_reopen time_stamp time_zone timeout tls tls-test-validation tls12-and-older tls12_and_older tls13 tls_test_validation to topic transport trap-obj trap_obj trigger trim-large-messages trim_large_messages truncate-size truncate-size-ratio truncate_size truncate_size_ratio trusted-dn trusted-keys trusted_dn trusted_keys ts-format ts_format ttl type udp udp6 unix-dgram unix-stream unix_dgram unix_stream uri url use-dns use-fqdn use-syslogng-pid use-system-cert-store use_dns use_fqdn use_syslogng_pid use_system_cert_store user user-agent user_agent username usertty value value-pairs value-separator value_pairs value_separator values version vhost where wildcard-file wildcard_file workers workspace-id workspace_id xml

syn keyword sysngBool		yes on no off auto
syn keyword sysngOperator	and or

syn keyword sysngParameter	remote-control remote_control system

syn keyword sysngIdentifier	escape-double-char escape_double_char escape-none escape_none flow-control flow_control no-parse no_parse nv-pairs nv_pairs pcre regexp store-matches store_matches string strip-whitespace strip_whitespace substring

" Priority
syn keyword sysngIdentifier	emerg alert crit err warning notice info debug
" Deprecaty Priority
syn keyword sysngIdentifier	panic error warn
" Facilities
syn keyword sysngIdentifier	kern user mail daemon auth syslog lpr news uucp cron authpriv ftp ntp security console solaris-cron local0 local1 local2 local3 local4 local5 local6 local7

syn match sysngComment		"#.*$"

" String
syn region sysngString start=+"+ end=+"+ skip=+\\"+ contains=sysngVariableInterpolation
syn region sysngString start=+'+ end=+'+ skip=+\\'+
syn region sysngString start=+`+ end=+`+
syn region sysngVariableInterpolation start="${" end="}" contained

" Numbers
syn match sysngOctNumber	"\<0\o\+\>"
syn match sysngDecNumber	"\<[0-9]\>"
syn match sysngDecNumber	"\<[1-9]\d\+\>"
syn match sysngHexNumber	"\<0x\x\+\>"
syn match sysngIdentifier	"\<[dfoprs]_[[:alnum:]_-]\+\>"
syn match sysngObject		"@version: *\d\+\.\d\+"
syn match sysngObject		"@include"
syn match sysngObject		"@define"
syn match sysngObject		"@module"
syn match sysngObject		"@requires"

if !exists("did_sysng_syntax_inits")
    let did_sysng_syntax_inits = 1

    hi link sysngObject			Statement
    hi link sysngComment		Comment
    hi link sysngString			String
    hi link sysngOctNumber		Number
    hi link sysngDecNumber		Number
    hi link sysngHexNumber		Number
    hi link sysngBool			Constant
    hi link sysngIdentifier		Identifier
    hi link sysngVariableInterpolation	Identifier

    hi link sysngParameter		Type
    hi link sysngOperator		Operator
endif

let b:current_syntax = "syslog-ng"
