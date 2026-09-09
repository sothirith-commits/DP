.class public final Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final idToKeyMap:Landroid/util/SparseArray;

.field public final keyToIdMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->idToKeyMap:Landroid/util/SparseArray;

    return-void
.end method
