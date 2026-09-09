.class public final Lcom/tinnove/renderclient/CocosDataEventManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/tinnove/renderclient/CocosDataEventManager;


# direct methods
.method public constructor <init>(Lcom/tinnove/renderclient/CocosDataEventManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinnove/renderclient/CocosDataEventManager$1;->this$0:Lcom/tinnove/renderclient/CocosDataEventManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-object p0
.end method
