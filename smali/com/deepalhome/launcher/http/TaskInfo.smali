.class public final Lcom/deepalhome/launcher/http/TaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentSize:J

.field public totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/deepalhome/launcher/http/TaskInfo;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    and-int/lit8 p1, p1, 0x2

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    move-wide p2, v0

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/deepalhome/launcher/http/TaskInfo;->currentSize:J

    iput-wide p2, p0, Lcom/deepalhome/launcher/http/TaskInfo;->totalSize:J

    return-void
.end method
