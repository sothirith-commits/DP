.class public final Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnSectionDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnSectionDialog$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$showColumnSectionDialog$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->SINCE_CHARGED:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    sget-object v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->showColumnOrderDialog(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
