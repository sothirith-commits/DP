.class public final enum Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/navigation/editor/GridDragPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExistingSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

.field public static final enum NAV_BAR:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

.field public static final enum PANEL:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;


# direct methods
.method private static final synthetic $values()[Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->NAV_BAR:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    sget-object v1, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->PANEL:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    const-string v1, "NAV_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->NAV_BAR:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    new-instance v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    const-string v1, "PANEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->PANEL:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->$values()[Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->$VALUES:[Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static native getEntries()Lkotlin/enums/EnumEntries;
.end method

.method public static native valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;
.end method

.method public static native values()[Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;
.end method
