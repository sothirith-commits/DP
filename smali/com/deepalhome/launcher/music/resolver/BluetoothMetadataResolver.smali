.class public final Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final stateMachine:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;->stateMachine:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;

    return-void
.end method
