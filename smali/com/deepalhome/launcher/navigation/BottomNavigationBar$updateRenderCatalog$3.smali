.class public final Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/BottomNavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$3;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    const-string v0, "child"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$updateRenderCatalog$3;->this$0:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/BottomNavigationBarBinding;->gridHost:Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView;->dismissTransientUi(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
