.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "climate:open_panel"

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->open(Ljava/lang/String;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
