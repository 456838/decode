.class final Lmiui/external/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic asC:Lmiui/external/SdkErrorActivity;


# direct methods
.method constructor <init>(Lmiui/external/SdkErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/d;->asC:Lmiui/external/SdkErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lmiui/external/d;->asC:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->aGx(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lmiui/external/c;

    iget-object v2, p0, Lmiui/external/d;->asC:Lmiui/external/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/external/c;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/external/d;->asC:Lmiui/external/SdkErrorActivity;

    invoke-virtual {v2}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "SdkUpdatePromptDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/external/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    new-instance v1, Lmiui/external/g;

    invoke-direct {v1, p0, v0}, Lmiui/external/g;-><init>(Lmiui/external/d;Landroid/app/Dialog;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/external/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
