.class public final Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;
.super Lcom/openos/virtualcar/IVirtualCarPropertyEventListener$Stub;
.source "SourceFile"


# instance fields
.field public final mMgr:Ljava/lang/ref/WeakReference;

.field public final synthetic this$0:Lcom/openos/virtualcar/VirtualCarPropertyManager;


# direct methods
.method public constructor <init>(Lcom/openos/virtualcar/VirtualCarPropertyManager;Lcom/openos/virtualcar/VirtualCarPropertyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;->this$0:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    invoke-direct {p0}, Lcom/openos/virtualcar/IVirtualCarPropertyEventListener$Stub;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/openos/virtualcar/VirtualCarPropertyManager$VirtualCarPropertyEventListenerToService;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method
