.class public final Lcom/umeng/analytics/pro/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/ai;->e:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/ai;->d:I

    iput v1, p0, Lcom/umeng/analytics/pro/ai;->c:I

    iput v1, p0, Lcom/umeng/analytics/pro/ai;->b:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "-"

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/pro/ai;->b:I

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/umeng/analytics/pro/ai;->c:I

    iget v0, p0, Lcom/umeng/analytics/pro/ai;->b:I

    if-ge v0, v3, :cond_0

    iput v3, p0, Lcom/umeng/analytics/pro/ai;->b:I

    :cond_0
    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/umeng/analytics/pro/ai;->c:I

    :cond_1
    iput-boolean v3, p0, Lcom/umeng/analytics/pro/ai;->e:Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/umeng/analytics/pro/ai;->d:I

    iput-boolean v0, p0, Lcom/umeng/analytics/pro/ai;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method
