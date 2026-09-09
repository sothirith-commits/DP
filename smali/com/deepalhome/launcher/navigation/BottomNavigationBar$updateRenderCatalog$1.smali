.class public final Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$1;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$1;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->cardView:Landroidx/cardview/widget/CardView;

    const-string v0, "cardView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
