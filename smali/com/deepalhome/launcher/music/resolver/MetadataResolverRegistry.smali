.class public final Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

.field public static final bluetoothResolver:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/MetadataResolverRegistry;->bluetoothResolver:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
