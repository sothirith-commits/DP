.class public final Lcom/luck/picture/lib/engine/MediaPlayerEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/engine/VideoPlayerEngine;


# instance fields
.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/engine/MediaPlayerEngine;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
