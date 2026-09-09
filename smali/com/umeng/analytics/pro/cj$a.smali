.class public final Lcom/umeng/analytics/pro/cj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/analytics/pro/cj$a;->a:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/umeng/analytics/pro/dd;)Lcom/umeng/analytics/pro/cp;
    .locals 3

    new-instance v0, Lcom/umeng/analytics/pro/cj;

    iget-wide v1, p0, Lcom/umeng/analytics/pro/cj$a;->a:J

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/analytics/pro/cj;-><init>(Lcom/umeng/analytics/pro/dd;J)V

    return-object v0
.end method
