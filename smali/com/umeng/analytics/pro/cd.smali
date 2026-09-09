.class public Lcom/umeng/analytics/pro/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/umeng/analytics/pro/cd;->b:B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/analytics/pro/cd;->a:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/umeng/analytics/pro/cd;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/umeng/analytics/pro/cd;->d:Z

    return-void
.end method
