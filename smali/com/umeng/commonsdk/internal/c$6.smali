.class public final Lcom/umeng/commonsdk/internal/c$6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/umeng/commonsdk/internal/c;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$6;->a:Lcom/umeng/commonsdk/internal/c;

    return-void
.end method


# virtual methods
.method public final onConfigReady(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "MobclickRT"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigReady:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/umeng/commonsdk/internal/c$6;->a:Lcom/umeng/commonsdk/internal/c;

    iget-object p0, p0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    sget-object v0, Lcom/umeng/ccg/d;->b:Ljava/lang/String;

    sget-object v0, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    const/16 v1, 0xc9

    invoke-static {p0, v1, v0, p1}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "onConfigReady: empty config!"

    invoke-static {v0, p0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
