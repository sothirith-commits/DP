.class public final Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/DriveModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    const-string v0, "info"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    sget v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->$r8$clinit:I

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->parseS05ModeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->pendingModeIndex:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->refreshModeStates$1()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
