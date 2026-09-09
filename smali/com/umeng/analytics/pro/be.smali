.class public final Lcom/umeng/analytics/pro/be;
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
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->b(Landroid/content/Context;)Lorg/repackage/com/vivo/identifier/IdentifierIdClient;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/repackage/com/vivo/identifier/IdentifierIdClient;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const-string p1, "Current device does not support obtaining OAID"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/repackage/com/vivo/identifier/IdentifierManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "The OAID SDK package was not detected in your integration"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo([Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method
