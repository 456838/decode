.class public Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;
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
            "Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Vc:Lcom/xiaomi/accountsdk/account/data/T;

.field private Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/P;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/P;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UW:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/S;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/S;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/S;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/S;->notificationUrl:Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/accountsdk/request/f;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/request/f;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/S;->loginContent:Lcom/xiaomi/accountsdk/request/f;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vc:Lcom/xiaomi/accountsdk/account/data/T;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UX:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/R;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/R;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/R;->userId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-direct {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/xiaomi/accountsdk/account/data/R;->Va:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/accountsdk/account/data/R;->Vb:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vc:Lcom/xiaomi/accountsdk/account/data/T;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UV:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/xiaomi/accountsdk/account/data/Q;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/account/data/Q;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v0, v1, Lcom/xiaomi/accountsdk/account/data/Q;->UZ:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vc:Lcom/xiaomi/accountsdk/account/data/T;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UW:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vc:Lcom/xiaomi/accountsdk/account/data/T;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/S;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/S;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/S;->notificationUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/S;->loginContent:Lcom/xiaomi/accountsdk/request/f;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/f;->adZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UX:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vc:Lcom/xiaomi/accountsdk/account/data/T;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/R;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/R;->userId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/R;->Va:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->ST:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/R;->Va:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SU:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/R;->Va:Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SV:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/R;->Vb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vd:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;->UV:Lcom/xiaomi/accountsdk/account/data/Step1LoginContext$NextStep;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/Step1LoginContext;->Vc:Lcom/xiaomi/accountsdk/account/data/T;

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/Q;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/Q;->UZ:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0
.end method
