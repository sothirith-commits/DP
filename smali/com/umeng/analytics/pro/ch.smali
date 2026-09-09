.class public final Lcom/umeng/analytics/pro/ch;
.super Lcom/umeng/analytics/pro/cd;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/bq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/cd;-><init>(BZ)V

    iput-object p1, p0, Lcom/umeng/analytics/pro/ch;->a:Ljava/lang/Class;

    return-void
.end method
