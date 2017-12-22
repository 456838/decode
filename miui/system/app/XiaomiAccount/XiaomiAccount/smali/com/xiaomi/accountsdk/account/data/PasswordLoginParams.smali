.class public Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Ti:Ljava/lang/String;

.field public final Tj:Ljava/lang/String;

.field public final Tk:Ljava/lang/String;

.field public final Tl:Ljava/lang/String;

.field public Tm:[Ljava/lang/String;

.field public Tn:Z

.field public To:Z

.field public Tp:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

.field public Tq:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field public Tr:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/w;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/w;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->password:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tj:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "deviceId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Ti:Ljava/lang/String;

    const-string/jumbo v0, "ticketToken"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tr:Ljava/lang/String;

    const-string/jumbo v0, "metaLoginData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tp:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    const-string/jumbo v0, "returnStsUrl"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tn:Z

    const-string/jumbo v0, "needProcessNotification"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->To:Z

    const-string/jumbo v0, "hashedEnvFactors"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tm:[Ljava/lang/String;

    const-string/jumbo v0, "activatorPhoneInfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tq:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yz(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yv(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->password:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yx(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tj:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yp(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yq(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tk:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yr(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Ti:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yy(Lcom/xiaomi/accountsdk/account/data/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tr:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yt(Lcom/xiaomi/accountsdk/account/data/v;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tp:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yw(Lcom/xiaomi/accountsdk/account/data/v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tn:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yu(Lcom/xiaomi/accountsdk/account/data/v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->To:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Ys(Lcom/xiaomi/accountsdk/account/data/v;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tm:[Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/v;->Yo(Lcom/xiaomi/accountsdk/account/data/v;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tq:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/v;Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/v;)V

    return-void
.end method

.method public static Yc(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/v;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/v;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/v;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yd(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Ye(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yi(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yg(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yh(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Ti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yn(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tp:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yj(Lcom/xiaomi/accountsdk/account/data/MetaLoginData;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tn:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yl(Z)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->To:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Yk(Z)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tm:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/v;->Ym([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "deviceId"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Ti:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "ticketToken"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "metaLoginData"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tp:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "returnStsUrl"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tn:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "needProcessNotification"

    iget-boolean v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->To:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "hashedEnvFactors"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tm:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "activatorPhoneInfo"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;->Tq:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
