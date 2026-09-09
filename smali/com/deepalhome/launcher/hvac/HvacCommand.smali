.class public abstract Lcom/deepalhome/launcher/hvac/HvacCommand;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;


# instance fields
.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public toJson()Lcom/google/gson/JsonObject;
    .locals 2

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
