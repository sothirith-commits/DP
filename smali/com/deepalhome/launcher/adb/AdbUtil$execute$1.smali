.class public final Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# instance fields
.field public final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field public final synthetic $r8$classId:I

.field public final synthetic $shellCommand:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$shellCommand:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method

.method private final onCancel$com$deepalhome$launcher$adb$AdbUtil$execute$1()V
    .locals 0

    return-void
.end method

.method private final onCancel$com$deepalhome$launcher$adb$OneKeyAdbUtil$execute$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final doInBackground()Ljava/lang/Object;
    .locals 7

    const-string v0, "getString(...)"

    const v1, 0x7f130395

    iget-object v2, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$shellCommand:Ljava/lang/String;

    const-string v3, "shell:"

    iget p0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->openStream(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AdbStream;->close()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/adb/AdbUtil;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/util/CarUtil;->SL03_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isEZ6()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "ro.adb.shellverify.enable"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "true"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "service.adb.shellverify.passed"

    invoke-static {p0, v5}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "UTF_8"

    const-string v4, "ro.adb.shellverify.encodedpw"

    invoke-static {v4, v5}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v4, "getBytes(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, p0}, Ljava/util/Base64$Decoder;->decode([B)[B

    move-result-object p0

    const-string v4, "decode(...)"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v4

    :goto_0
    instance-of p0, v4, Lkotlin/Result$Failure;

    if-eqz p0, :cond_2

    const/4 v4, 0x0

    :cond_2
    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    const-string v5, "shell:password "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->openStream(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AdbStream;->close()V

    :cond_4
    :goto_1
    sget-object p0, Lcom/deepalhome/launcher/adb/AdbConnectionManager;->INSTANCE:Lcom/deepalhome/launcher/adb/AdbConnectionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->openStream(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AdbStream;->close()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCancel()V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$r8$classId:I

    return-void
.end method

.method public final onFail(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const p1, 0x7f130472

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    const p1, 0x7f130472

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    const-string v0, "result"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "result"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/deepalhome/launcher/adb/AdbUtil$execute$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
