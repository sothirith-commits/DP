.class public final Lcom/deepalhome/launcher/view/BaseView$onUIModeChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/view/BaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepalhome/launcher/view/BaseView<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/view/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/view/BaseView$onUIModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/view/BaseView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/view/BaseView$onUIModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/view/BaseView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/BaseView;->updateUIMode(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
