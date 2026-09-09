.class public final Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$2;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$2;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->access$getOverlayHost$p(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$2;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$2;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_1
    return-object v0
.end method
