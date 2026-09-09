.class public final Lcom/luck/picture/lib/immersive/ImmersiveManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;II)V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/high16 v2, 0xc000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    sget-object v4, Lcom/luck/picture/lib/immersive/RomUtils;->romType:Ljava/lang/Integer;

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/luck/picture/lib/immersive/RomUtils;->getSystemProperty()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v8, 0x4

    if-nez v7, :cond_2

    :try_start_1
    invoke-static {v4}, Lcom/luck/picture/lib/utils/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v4, v8, :cond_2

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/luck/picture/lib/immersive/RomUtils;->romType:Ljava/lang/Integer;

    move v4, v1

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-static {}, Lcom/luck/picture/lib/immersive/RomUtils;->getFlymeVersion()I

    move-result v4

    if-lt v4, v8, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/luck/picture/lib/immersive/RomUtils;->romType:Ljava/lang/Integer;

    move v4, v6

    goto :goto_1

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/luck/picture/lib/immersive/RomUtils;->romType:Ljava/lang/Integer;

    move v4, v5

    :goto_1
    const/4 v7, 0x7

    if-eq v4, v1, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v4, v5, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {p0, v2, v2, v3}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setAndroidNativeLightStatusBar(Landroid/app/Activity;ZZZ)V

    goto/16 :goto_2

    :cond_5
    const-class v4, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p0, v2, v2}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->initStatusBarStyle(Landroid/app/Activity;ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string v6, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-string v8, "meizuFlags"

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v6, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    not-int v1, v1

    and-int/2addr v1, v6

    invoke-virtual {v4, v5, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Lcom/luck/picture/lib/immersive/RomUtils;->getFlymeVersion()I

    move-result v1

    if-lt v1, v7, :cond_8

    invoke-static {p0, v2, v2, v3}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setAndroidNativeLightStatusBar(Landroid/app/Activity;ZZZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    :try_start_4
    invoke-static {p0, v2, v2, v3}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setAndroidNativeLightStatusBar(Landroid/app/Activity;ZZZ)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/luck/picture/lib/immersive/RomUtils;->getSystemProperty()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v4, :cond_7

    :try_start_5
    invoke-static {v1}, Lcom/luck/picture/lib/utils/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-lt v1, v7, :cond_7

    :try_start_6
    invoke-static {p0, v2, v2, v3}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setAndroidNativeLightStatusBar(Landroid/app/Activity;ZZZ)V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    invoke-static {p0, v2, v2}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->initStatusBarStyle(Landroid/app/Activity;ZZ)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    const-string v4, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "setExtraFlags"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    :try_start_8
    invoke-static {p0, v2, v2, v3}, Lcom/luck/picture/lib/immersive/LightStatusBarUtils;->setAndroidNativeLightStatusBar(Landroid/app/Activity;ZZZ)V

    :cond_8
    :goto_2
    const/high16 p0, -0x80000000

    invoke-virtual {v0, p0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, p2}, Landroid/view/Window;->setNavigationBarColor(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
