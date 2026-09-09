.class public final Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;

.field public static final creditLineRegex:Lkotlin/text/Regex;

.field public static final delimiters:Ljava/util/List;

.field public static final lyricSymbolRegex:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;

    invoke-direct {v0}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^(\u4f5c\u8bcd|\u4f5c\u66f2|\u7f16\u66f2|\u5236\u4f5c\u4eba|\u7edf\u7b79|\u6df7\u97f3|\u8bcd\u66f2|\u8bcd|\u66f2|\u6f14\u5531|\u539f\u5531|\u7ffb\u5531|\u76d1\u5236|\u548c\u58f0|\u5f55\u97f3|\u6bcd\u5e26|\u5409\u4ed6|\u8d1d\u65af|\u9f13)\\s*[:\uff1a]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->creditLineRegex:Lkotlin/text/Regex;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\uff0c\u3002\uff01\uff1f!?\uff1b;]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->lyricSymbolRegex:Lkotlin/text/Regex;

    const-string v0, " / "

    const-string v1, " | "

    const-string v2, " - "

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->delimiters:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static observe(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;
    .locals 11

    sget-object v0, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->INSTANCE:Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/music/resolver/BluetoothTextNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->EMPTY:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->creditLineRegex:Lkotlin/text/Regex;

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->CREDIT_LINE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    goto/16 :goto_4

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->delimiters:Ljava/util/List;

    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    invoke-static {v0, v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v10, 0x1

    xor-int/2addr v4, v10

    if-eqz v4, :cond_3

    invoke-static {v10, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3e

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v10

    if-eqz v2, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->COMPOSITE_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    goto/16 :goto_4

    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/16 v1, 0x28

    invoke-static {v0, v1}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x29

    invoke-static {v0, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_6

    goto :goto_3

    :cond_6
    const/16 v2, 0x5b

    invoke-static {v0, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x5d

    invoke-static {v0, v2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_7

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataFieldClassifier;->lyricSymbolRegex:Lkotlin/text/Regex;

    invoke-virtual {v1, v0}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-lt v2, v3, :cond_b

    const/4 v2, 0x4

    if-lt v1, v2, :cond_b

    :goto_2
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->LYRIC_LIKE:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    goto :goto_4

    :cond_b
    :goto_3
    sget-object v1, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;->PLAIN_TEXT:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;

    :goto_4
    new-instance v2, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;

    if-nez p1, :cond_c

    const-string p1, ""

    :cond_c
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothFieldObservation;-><init>(Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldKind;)V

    return-object v2
.end method
