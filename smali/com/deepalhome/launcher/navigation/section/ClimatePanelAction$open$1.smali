.class public final Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction$open$1;

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
    .locals 3

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$OpenPanel;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$OpenPanel;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
