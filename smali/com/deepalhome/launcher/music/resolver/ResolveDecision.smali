.class public final enum Lcom/deepalhome/launcher/music/resolver/ResolveDecision;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

.field public static final enum HOLD:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

.field public static final enum KEEP:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

.field public static final enum SWITCH:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    const-string v1, "KEEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->KEEP:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    new-instance v1, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    const-string v2, "SWITCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->SWITCH:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    new-instance v2, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    const-string v3, "HOLD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->HOLD:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    filled-new-array {v0, v1, v2}, [Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->$VALUES:[Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/ResolveDecision;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/music/resolver/ResolveDecision;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->$VALUES:[Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    return-object v0
.end method
