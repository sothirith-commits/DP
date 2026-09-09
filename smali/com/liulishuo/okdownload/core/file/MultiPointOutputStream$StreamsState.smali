.class public final Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isNoMoreStream:Z

.field public final newNoMoreStreamBlockList:Ljava/util/ArrayList;

.field public final noMoreStreamBlockList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->noMoreStreamBlockList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/ArrayList;

    return-void
.end method
