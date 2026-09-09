.class public final Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    sget v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->$r8$clinit:I

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->loadCachedModeIndex$1()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeSceneValidated()Z

    move-result v1

    iput-boolean v1, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricAvailable:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeWidgetSelected()Z

    move-result v0

    iput-boolean v0, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
