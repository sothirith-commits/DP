.class public final Lcom/deepalhome/launcher/view/DuckType$CoercedProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/view/DuckType;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/view/DuckType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DuckType$CoercedProxy;->this$0:Lcom/deepalhome/launcher/view/DuckType;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DuckType$CoercedProxy;->this$0:Lcom/deepalhome/launcher/view/DuckType;

    invoke-static {p0, p2}, Lcom/deepalhome/launcher/view/DuckType;->access$000(Lcom/deepalhome/launcher/view/DuckType;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DuckType;->access$100(Lcom/deepalhome/launcher/view/DuckType;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
