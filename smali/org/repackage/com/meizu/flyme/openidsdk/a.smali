.class public final Lorg/repackage/com/meizu/flyme/openidsdk/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p0, "openIdNotifyFlag"

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "shouldUpdateId, notifyFlag : "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "openIdPackage"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "openIdPackageList"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_2
    if-nez p0, :cond_9

    :cond_3
    :goto_0
    const-string p0, "openIdType"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a()Lorg/repackage/com/meizu/flyme/openidsdk/b;

    move-result-object p1

    const-string p2, "oaid"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p1, Lorg/repackage/com/meizu/flyme/openidsdk/b;->b:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    goto :goto_1

    :cond_4
    const-string p2, "vaid"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p1, Lorg/repackage/com/meizu/flyme/openidsdk/b;->d:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    goto :goto_1

    :cond_5
    const-string p2, "aaid"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p1, Lorg/repackage/com/meizu/flyme/openidsdk/b;->c:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    goto :goto_1

    :cond_6
    const-string p2, "udid"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p1, Lorg/repackage/com/meizu/flyme/openidsdk/b;->a:Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_8

    return-void

    :cond_8
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/repackage/com/meizu/flyme/openidsdk/OpenId;->a:J

    :cond_9
    :goto_2
    return-void
.end method
