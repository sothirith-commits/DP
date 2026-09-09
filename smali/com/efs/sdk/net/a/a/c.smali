.class public final Lcom/efs/sdk/net/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/efs/sdk/net/a/a/f;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/efs/sdk/net/a/a/f;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/efs/sdk/net/a/a/c;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/efs/sdk/net/a/a/c;->d:I

    iput-object p1, p0, Lcom/efs/sdk/net/a/a/c;->a:Lcom/efs/sdk/net/a/a/f;

    iput-object p2, p0, Lcom/efs/sdk/net/a/a/c;->b:Ljava/lang/String;

    return-void
.end method
