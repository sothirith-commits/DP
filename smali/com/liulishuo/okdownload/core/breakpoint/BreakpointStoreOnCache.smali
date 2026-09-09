.class public final Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final keyToIdMap:Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;

.field public final responseFilenameMap:Ljava/util/HashMap;

.field public final sortedOccupiedIds:Ljava/util/ArrayList;

.field public final storedInfos:Landroid/util/SparseArray;

.field public final unStoredTasks:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->unStoredTasks:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->responseFilenameMap:Ljava/util/HashMap;

    new-instance v1, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;

    invoke-direct {v1}, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;-><init>()V

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->keyToIdMap:Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget v4, v4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized allocateId()I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v2, :cond_1

    if-eq v3, v4, :cond_2

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-eq v3, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v4

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public final createAndInsert(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 4

    iget v0, p1, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    new-instance v1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object v2, p1, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    iget-object p1, p1, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->unStoredTasks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized remove(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->unStoredTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->sortedOccupiedIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->keyToIdMap:Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->idToKeyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final update(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Z
    .locals 3

    iget-object v0, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->responseFilenameMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    iget v1, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    iget v2, p1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->copy()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
