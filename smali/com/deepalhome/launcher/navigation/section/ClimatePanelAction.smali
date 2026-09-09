.class public final Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "key"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;

    invoke-virtual {v0, p0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method
