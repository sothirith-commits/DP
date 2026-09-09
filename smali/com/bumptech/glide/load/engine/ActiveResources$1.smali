.class public final Lcom/bumptech/glide/load/engine/ActiveResources$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    const-string p1, "glide-active-resources"

    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
