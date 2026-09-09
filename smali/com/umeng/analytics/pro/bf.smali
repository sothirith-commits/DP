.class public final Lcom/umeng/analytics/pro/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/pro/au;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/repackage/com/miui/deviceid/IdentifierManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/repackage/com/miui/deviceid/IdentifierManager;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "IdentifierManager"

    const-string v1, "invoke exception!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p1, "Current device does not support obtaining OAID"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string p1, "The OAID SDK package was not detected in your integration"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method
