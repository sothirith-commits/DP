.class public final Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;


# direct methods
.method public constructor <init>(Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl$1;->this$0:Lcom/tinnove/comlib/virtual/VirtualCarManagerImpl;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const p1, 0x35600105

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x35400109

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
