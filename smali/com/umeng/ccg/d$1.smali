.class public final Lcom/umeng/ccg/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;


# virtual methods
.method public final onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/umeng/commonsdk/service/UMGlobalContext$a;->a:Lcom/umeng/commonsdk/service/UMGlobalContext;

    iget-object p0, p0, Lcom/umeng/commonsdk/service/UMGlobalContext;->mApplicationContext:Landroid/content/Context;

    sget-object p1, Lcom/umeng/ccg/d$b;->a:Lcom/umeng/ccg/d;

    const/16 v0, 0x6b

    invoke-static {p0, v0, p1, p2}, Lcom/umeng/ccg/c;->a(Landroid/content/Context;ILcom/umeng/ccg/d;Ljava/lang/Object;)V

    return-void
.end method
