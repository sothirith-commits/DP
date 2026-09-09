.class final Lcom/efs/sdk/pa/a/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/a/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/pa/a/b$a;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/pa/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/pa/a/b$a$1;->a:Lcom/efs/sdk/pa/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget-object p0, p0, Lcom/efs/sdk/pa/a/b$a$1;->a:Lcom/efs/sdk/pa/a/b$a;

    iget-wide v0, p0, Lcom/efs/sdk/pa/a/b$a;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/efs/sdk/pa/a/b$a;->b:J

    const/4 p0, 0x1

    return p0
.end method
