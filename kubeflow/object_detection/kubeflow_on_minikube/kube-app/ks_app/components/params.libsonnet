{
  global: {},
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "pytorch-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      disks: 'null',
      name: 'pytorch-operator',
      pytorchDefaultImage: 'null',
      pytorchJobImage: 'gcr.io/kubeflow-images-public/pytorch-operator:v0.5.0',
    },
    ambassador: {
      ambassadorImage: 'quay.io/datawire/ambassador:0.37.0',
      ambassadorNodePort: 0,
      ambassadorServiceType: 'ClusterIP',
      name: 'ambassador',
      platform: 'minikube',
      replicas: 1,
    },
    openvino: {
      image: 'openvino-model-server',
      modelName: 'resnet',
      modelStorageType: 'nfs',
      name: 'openvino',
      pvc: 'nfs',
      pvcMount: '/opt/ml',
      registry: 'gcr.io',
      replicas: 1,
      repoPath: 'constant-cubist-173123/inference_server',
      servicePort: 80,
      serviceType: 'ClusterIP',
      targetPort: 80,
    },
    jupyter: {
      accessLocalFs: 'false',
      disks: 'null',
      gcpSecretName: 'user-gcp-sa',
      image: 'gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1',
      jupyterHubAuthenticator: 'null',
      name: 'jupyter',
      notebookGid: '-1',
      notebookUid: '-1',
      platform: 'minikube',
      rokSecretName: 'secret-rok-{username}',
      serviceType: 'ClusterIP',
      storageClass: 'null',
      ui: 'default',
      useJupyterLabAsDefault: 'false',
    },
    "notebook-controller": {
      controllerImage: 'gcr.io/kubeflow-images-public/notebook-controller:v20190401-v0.4.0-rc.1-308-g33618cc9-e3b0c4',
      injectGcpCredentials: 'true',
      name: 'notebook-controller',
    },
    "jupyter-web-app": {
      image: 'gcr.io/kubeflow-images-public/jupyter-web-app:v0.5.0',
      name: 'jupyter-web-app',
      policy: 'Always',
      port: '80',
      prefix: 'jupyter',
      rokSecretName: 'secret-rok-{username}',
      ui: 'default',
    },
    centraldashboard: {
      image: 'gcr.io/kubeflow-images-public/centraldashboard:v0.5.0',
      name: 'centraldashboard',
    },
    "tf-job-operator": {
      cloud: 'null',
      deploymentNamespace: 'null',
      deploymentScope: 'cluster',
      name: 'tf-job-operator',
      tfDefaultImage: 'null',
      tfJobImage: 'gcr.io/kubeflow-images-public/tf_operator:v0.5.0',
      tfJobUiServiceType: 'ClusterIP',
    },
    tensorboard: {
      defaultTbImage: 'tensorflow/tensorflow:1.8.0',
      logDir: 'logs',
      name: 'tensorboard',
      servicePort: 9000,
      serviceType: 'ClusterIP',
      targetPort: 6006,
    },
    metacontroller: {
      image: 'metacontroller/metacontroller:v0.3.0',
      name: 'metacontroller',
    },
    profiles: {
      image: 'gcr.io/kubeflow-images-public/profile-controller:v20190228-v0.4.0-rc.1-192-g1a802656-dirty-f95773',
      name: 'profiles',
    },
    notebooks: {
      accessLocalFs: 'false',
      authenticator: 'null',
      disks: 'null',
      gid: '-1',
      image: 'gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1',
      name: 'notebooks',
      pvcMount: '/home/jovyan',
      registry: 'gcr.io',
      repoName: 'kubeflow-images-public',
      servicePort: '80',
      serviceType: 'ClusterIP',
      targetPort: '8888',
      uid: '-1',
    },
    argo: {
      artifactRepositoryAccessKeySecretKey: 'accesskey',
      artifactRepositoryAccessKeySecretName: 'mlpipeline-minio-artifact',
      artifactRepositoryBucket: 'mlpipeline',
      artifactRepositoryEndpoint: 'minio-service.kubeflow:9000',
      artifactRepositoryInsecure: 'true',
      artifactRepositoryKeyPrefix: 'artifacts',
      artifactRepositorySecretKeySecretKey: 'secretkey',
      artifactRepositorySecretKeySecretName: 'mlpipeline-minio-artifact',
      executorImage: 'argoproj/argoexec:v2.2.0',
      name: 'argo',
      uiImage: 'argoproj/argoui:v2.2.0',
      workflowControllerImage: 'argoproj/workflow-controller:v2.2.0',
    },
    pipeline: {
      name: 'pipeline',
    },
    katib: {
      katibUIImage: 'gcr.io/kubeflow-images-public/katib/katib-ui:v0.1.2-alpha-156-g4ab3dbd',
      metricsCollectorImage: 'gcr.io/kubeflow-images-public/katib/metrics-collector:v0.1.2-alpha-156-g4ab3dbd',
      name: 'katib',
      studyJobControllerImage: 'gcr.io/kubeflow-images-public/katib/studyjob-controller:v0.1.2-alpha-156-g4ab3dbd',
      suggestionBayesianOptimizationImage: 'gcr.io/kubeflow-images-public/katib/suggestion-bayesianoptimization:v0.1.2-alpha-156-g4ab3dbd',
      suggestionGridImage: 'gcr.io/kubeflow-images-public/katib/suggestion-grid:v0.1.2-alpha-156-g4ab3dbd',
      suggestionHyperbandImage: 'gcr.io/kubeflow-images-public/katib/suggestion-hyperband:v0.1.2-alpha-156-g4ab3dbd',
      suggestionRandomImage: 'gcr.io/kubeflow-images-public/katib/suggestion-random:v0.1.2-alpha-156-g4ab3dbd',
      vizierCoreImage: 'gcr.io/kubeflow-images-public/katib/vizier-core:v0.1.2-alpha-156-g4ab3dbd',
      vizierCoreRestImage: 'gcr.io/kubeflow-images-public/katib/vizier-core-rest:v0.1.2-alpha-156-g4ab3dbd',
      vizierDbImage: 'mysql:8.0.3',
    },
    spartakus: {
      name: 'spartakus',
      reportUsage: 'true',
      usageId: '658855746',
    },
    application: {
      components: ['ambassador', 'jupyter', 'notebook-controller', 'jupyter-web-app', 'profiles', 'centraldashboard', 'tf-job-operator', 'pytorch-operator', 'spartakus', 'argo', 'pipeline'],
      extendedInfo: 'false',
      name: 'kube-app',
      type: 'kubeflow',
      version: '0.5',
    },
  },
}