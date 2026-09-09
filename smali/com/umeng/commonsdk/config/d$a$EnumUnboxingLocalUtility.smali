.class public abstract synthetic Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static m(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;ILandroid/widget/TextView;)Landroidx/databinding/ViewDataBinding;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static m()Lkotlin/KotlinNothingValueException;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt;->noImpl()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    return-object v0
.end method

.method public static m(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic m(ILjava/lang/String;)V
    .locals 6

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-class v1, Lkotlin/jvm/internal/Intrinsics;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Parameter specified as non-null is null: method "

    const-string v4, "."

    const-string v5, ", parameter "

    invoke-static {v3, v2, v4, v0, v5}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->sanitizeStackTrace(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static m(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static m(ILjava/util/HashMap;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SPHINCSPlusConverter;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static m(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/sphincsplus/SPHINCSPlusKeyFactorySpi;-><init>()V

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method

.method public static m(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public static synthetic name(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string p0, "_LAST_FIELD"

    return-object p0

    :pswitch_1
    const-string p0, "header_sub_os_info"

    return-object p0

    :pswitch_2
    const-string p0, "header_first_resume"

    return-object p0

    :pswitch_3
    const-string p0, "header_foreground_count"

    return-object p0

    :pswitch_4
    const-string p0, "header_local_ip"

    return-object p0

    :pswitch_5
    const-string p0, "header_device_oaid"

    return-object p0

    :pswitch_6
    const-string p0, "header_ekv_send_on_exit"

    return-object p0

    :pswitch_7
    const-string p0, "header_tracking_newumid"

    return-object p0

    :pswitch_8
    const-string p0, "header_tracking_oldumid"

    return-object p0

    :pswitch_9
    const-string p0, "header_tracking_uop"

    return-object p0

    :pswitch_a
    const-string p0, "header_tracking_uuid"

    return-object p0

    :pswitch_b
    const-string p0, "header_tracking_serial"

    return-object p0

    :pswitch_c
    const-string p0, "header_tracking_mac"

    return-object p0

    :pswitch_d
    const-string p0, "header_tracking_idfa"

    return-object p0

    :pswitch_e
    const-string p0, "header_tracking_idmd5"

    return-object p0

    :pswitch_f
    const-string p0, "header_tracking_utdid"

    return-object p0

    :pswitch_10
    const-string p0, "header_tracking_android_id"

    return-object p0

    :pswitch_11
    const-string p0, "header_tracking_imei"

    return-object p0

    :pswitch_12
    const-string p0, "header_access"

    return-object p0

    :pswitch_13
    const-string p0, "header_carrier"

    return-object p0

    :pswitch_14
    const-string p0, "header_local_info"

    return-object p0

    :pswitch_15
    const-string p0, "header_timezone"

    return-object p0

    :pswitch_16
    const-string p0, "header_mc"

    return-object p0

    :pswitch_17
    const-string p0, "header_resolution"

    return-object p0

    :pswitch_18
    const-string p0, "header_os_version"

    return-object p0

    :pswitch_19
    const-string p0, "header_bulid"

    return-object p0

    :pswitch_1a
    const-string p0, "header_device_id_serialNo"

    return-object p0

    :pswitch_1b
    const-string p0, "header_device_id_android_id"

    return-object p0

    :pswitch_1c
    const-string p0, "header_device_id_mac"

    return-object p0

    :pswitch_1d
    const-string p0, "header_device_id_imei"

    return-object p0

    :pswitch_1e
    const-string p0, "header_device_type"

    return-object p0

    :pswitch_1f
    const-string p0, "header_sub_os_version"

    return-object p0

    :pswitch_20
    const-string p0, "header_sub_os_name"

    return-object p0

    :pswitch_21
    const-string p0, "header_mccmnc"

    return-object p0

    :pswitch_22
    const-string p0, "header_cpu"

    return-object p0

    :pswitch_23
    const-string p0, "header_utoken"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic name$1(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string p0, "_LAST_FIELD"

    return-object p0

    :pswitch_1
    const-string p0, "check_pus_permission"

    return-object p0

    :pswitch_2
    const-string p0, "check_system_app"

    return-object p0

    :pswitch_3
    const-string p0, "ccg_switch"

    return-object p0

    :pswitch_4
    const-string p0, "inner_cpu2"

    return-object p0

    :pswitch_5
    const-string p0, "inner_build2"

    return-object p0

    :pswitch_6
    const-string p0, "inner_batt2"

    return-object p0

    :pswitch_7
    const-string p0, "inner_iccid"

    return-object p0

    :pswitch_8
    const-string p0, "inner_imei2"

    return-object p0

    :pswitch_9
    const-string p0, "tp_tp"

    return-object p0

    :pswitch_a
    const-string p0, "internal_meid"

    return-object p0

    :pswitch_b
    const-string p0, "internal_imsi"

    return-object p0

    :pswitch_c
    const-string p0, "internal_run_server"

    return-object p0

    :pswitch_d
    const-string p0, "inner_lbs"

    return-object p0

    :pswitch_e
    const-string p0, "inner_appls"

    return-object p0

    :pswitch_f
    const-string p0, "inner_cam"

    return-object p0

    :pswitch_10
    const-string p0, "inner_bstn"

    return-object p0

    :pswitch_11
    const-string p0, "inner_rom"

    return-object p0

    :pswitch_12
    const-string p0, "inner_cpu"

    return-object p0

    :pswitch_13
    const-string p0, "inner_mem"

    return-object p0

    :pswitch_14
    const-string p0, "inner_bt"

    return-object p0

    :pswitch_15
    const-string p0, "inner_input"

    return-object p0

    :pswitch_16
    const-string p0, "inner_winfo"

    return-object p0

    :pswitch_17
    const-string p0, "inner_sinfo"

    return-object p0

    :pswitch_18
    const-string p0, "inner_scr"

    return-object p0

    :pswitch_19
    const-string p0, "inner_sr"

    return-object p0

    :pswitch_1a
    const-string p0, "inner_build"

    return-object p0

    :pswitch_1b
    const-string p0, "inner_sd"

    return-object p0

    :pswitch_1c
    const-string p0, "inner_dsk_s"

    return-object p0

    :pswitch_1d
    const-string p0, "inner_thm_z"

    return-object p0

    :pswitch_1e
    const-string p0, "inner_gdf_r"

    return-object p0

    :pswitch_1f
    const-string p0, "inner_fl"

    return-object p0

    :pswitch_20
    const-string p0, "inner_ca"

    return-object p0

    :pswitch_21
    const-string p0, "inner_mo"

    return-object p0

    :pswitch_22
    const-string p0, "inner_to"

    return-object p0

    :pswitch_23
    const-string p0, "inner_gp"

    return-object p0

    :pswitch_24
    const-string p0, "inner_by"

    return-object p0

    :pswitch_25
    const-string p0, "inner_rs"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic name$2(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string p0, "_LAST_FIELD"

    return-object p0

    :pswitch_1
    const-string p0, "push_notification_enabled"

    return-object p0

    :pswitch_2
    const-string p0, "push_data_data"

    return-object p0

    :pswitch_3
    const-string p0, "push_intent_exist"

    return-object p0

    :pswitch_4
    const-string p0, "push_service_name"

    return-object p0

    :pswitch_5
    const-string p0, "push_service_work"

    return-object p0

    :pswitch_6
    const-string p0, "push_utdid"

    return-object p0

    :pswitch_7
    const-string p0, "push_operator"

    return-object p0

    :pswitch_8
    const-string p0, "push_resolution"

    return-object p0

    :pswitch_9
    const-string p0, "push_locale_info"

    return-object p0

    :pswitch_a
    const-string p0, "push_time_zone"

    return-object p0

    :pswitch_b
    const-string p0, "push_on_line"

    return-object p0

    :pswitch_c
    const-string p0, "push_network_access_mode"

    return-object p0

    :pswitch_d
    const-string p0, "push_settings_android_id"

    return-object p0

    :pswitch_e
    const-string p0, "push_serialNo"

    return-object p0

    :pswitch_f
    const-string p0, "push_android_id"

    return-object p0

    :pswitch_10
    const-string p0, "push_mac"

    return-object p0

    :pswitch_11
    const-string p0, "push_imei"

    return-object p0

    :pswitch_12
    const-string p0, "push_cpu"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic name$3(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-string p0, "_LAST_FIELD"

    return-object p0

    :pswitch_1
    const-string p0, "share_conn_type"

    return-object p0

    :pswitch_2
    const-string p0, "share_resolution"

    return-object p0

    :pswitch_3
    const-string p0, "share_ssid"

    return-object p0

    :pswitch_4
    const-string p0, "share_sd_size"

    return-object p0

    :pswitch_5
    const-string p0, "share_wifi_mac"

    return-object p0

    :pswitch_6
    const-string p0, "share_android_id"

    return-object p0

    :pswitch_7
    const-string p0, "share_net_accmode"

    return-object p0

    :pswitch_8
    const-string p0, "share_sn"

    return-object p0

    :pswitch_9
    const-string p0, "share_iccid"

    return-object p0

    :pswitch_a
    const-string p0, "share_imsi"

    return-object p0

    :pswitch_b
    const-string p0, "share_device_id"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "DECODE_DATA"

    return-object p0

    :cond_1
    const-string p0, "SWITCH_TO_SOURCE_SERVICE"

    return-object p0

    :cond_2
    const-string p0, "INITIALIZE"

    return-object p0
.end method

.method public static synthetic stringValueOf$1(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "FINISHED"

    return-object p0

    :pswitch_1
    const-string p0, "ENCODE"

    return-object p0

    :pswitch_2
    const-string p0, "SOURCE"

    return-object p0

    :pswitch_3
    const-string p0, "DATA_CACHE"

    return-object p0

    :pswitch_4
    const-string p0, "RESOURCE_CACHE"

    return-object p0

    :pswitch_5
    const-string p0, "INITIALIZE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic stringValueOf$2(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "PRE_ALLOCATE_FAILED"

    return-object p0

    :pswitch_1
    const-string p0, "SAME_TASK_BUSY"

    return-object p0

    :pswitch_2
    const-string p0, "FILE_BUSY"

    return-object p0

    :pswitch_3
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_4
    const-string p0, "ERROR"

    return-object p0

    :pswitch_5
    const-string p0, "COMPLETED"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
