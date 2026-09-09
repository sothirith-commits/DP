.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;
.super Lcom/deepalhome/launcher/hvac/HvacCommand;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;

.field public static final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;

    const-string v0, "Close A/C panel"

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;->displayName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "close_panel"

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;->displayName:Ljava/lang/String;

    return-object p0
.end method
