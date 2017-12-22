.class public Lmiui/telephony/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final atX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmiui/telephony/d;->aua:Ljava/lang/String;

    sput-object v0, Lmiui/telephony/a;->atX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aHA(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lmiui/telephony/b;->aHJ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lmiui/telephony/d;->aHY(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHB()I
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/b;->aHM()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lmiui/telephony/d;->aIc()I

    move-result v0

    return v0
.end method

.method public static aHC(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/telephony/b;->aHN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lmiui/telephony/d;->aId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHD()I
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/telephony/b;->aHP()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lmiui/telephony/d;->aIe()I

    move-result v0

    return v0
.end method

.method public static aHE(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lmiui/telephony/b;->aHQ(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lmiui/telephony/d;->aIf(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHF(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lmiui/telephony/b;->aHR(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lmiui/telephony/d;->aIh(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHG(Landroid/content/Context;I)Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lmiui/telephony/b;->aHU(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p0, p1}, Lmiui/telephony/d;->aIj(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static aHy(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lmiui/telephony/b;->aHH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lmiui/telephony/d;->aHW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aHz(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lmiui/telephony/b;->aHI(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lmiui/telephony/d;->aHX(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
